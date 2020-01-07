ARG USER_ID=1000
ARG GROUP_ID=1000

FROM ruby:2.6-alpine as Base
ARG USER_ID
ARG GROUP_ID
ARG BUNDLE_WITHOUT=""
ARG RAILS_ENV="development"

RUN sed -i "s/999/499/" /etc/group
RUN addgroup -g $GROUP_ID half_tone &&\
  adduser -D -g '' -u $USER_ID -G half_tone half_tone

FROM Base as Builder
ARG GROUP_ID
ARG USER_ID

RUN apk add --no-cache \
  build-base \
  postgresql-dev \
  nodejs-current \
  tzdata \
  yarn \
  git


RUN mkdir /app
RUN chown ${USER_ID}:${GROUP_ID} /app
USER half_tone
WORKDIR /app

COPY --chown=${USER_ID}:${GROUP_ID} Gemfile Gemfile.lock ./

# see https://github.com/protocolbuffers/protobuf/issues/4460
RUN CFLAGS="-Wno-cast-function-type" \
  BUNDLE_FORCE_RUBY_PLATFORM=1 \
  bundle install --binstubs -j4 --retry 3 \
  && rm -rf "${BUNDLE_PATH}/cache" \
  "${BUNDLE_PATH}/bundler/gems/*/.git" \
  && find "${BUNDLE_PATH}/gems" -regex '.+\.[co]$' -delete

COPY --chown=${USER_ID}:${GROUP_ID} . .
RUN yarn --pure-lockfile \
  && bundle exec rake assets:precompile

FROM Base
ARG USER_ID
ARG GROUP_ID

RUN apk add --update --no-cache \
  openssl \
  tzdata \
  postgresql-dev \
  postgresql-client \
  file \
  imagemagick \
  nodejs-current # omit this in production

COPY --from=Builder ${BUNDLE_PATH} ${BUNDLE_PATH}
COPY --from=Builder --chown=${USER_ID}:${GROUP_ID} /app /app

ENV RAILS_LOG_TO_SDTOUT true
WORKDIR /app

CMD ["bundle", "exec", "bin/rails", "server", "-b", "0.0.0.0"]
