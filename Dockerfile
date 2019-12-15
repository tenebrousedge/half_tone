FROM ruby:2.6-alpine

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN sed -i "s/999/499/" /etc/group
RUN addgroup -g $GROUP_ID half_tone &&\
  adduser -D -g '' -u $USER_ID -G half_tone half_tone

RUN apk add --no-cache \
  build-base \
  postgresql-dev \
  nodejs \
  npm \
  tzdata \
  git

RUN npm install -g yarn

RUN mkdir /app
RUN chown ${USER_ID}:${GROUP_ID} /app
USER half_tone
WORKDIR /app

COPY --chown=1000:1000 Gemfile Gemfile.lock ./

# see https://github.com/protocolbuffers/protobuf/issues/4460
RUN CFLAGS="-Wno-cast-function-type" \
  BUNDLE_FORCE_RUBY_PLATFORM=1 \
  bundle install --binstubs

RUN yarn --pure-lockfile

USER root
RUN apk del build-base

USER half_tone

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]
