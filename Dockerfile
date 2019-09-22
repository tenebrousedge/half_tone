FROM ruby:2.6-alpine

RUN mkdir /app
WORKDIR /app

RUN apk add --update \
  build-base \
  postgresql-dev \
  nodejs \
  npm \
  tzdata

COPY Gemfile Gemfile.lock ./

# see https://github.com/protocolbuffers/protobuf/issues/4460
RUN CFLAGS="-Wno-cast-function-type" \
  BUNDLE_FORCE_RUBY_PLATFORM=1 \
  bundle install --binstubs

RUN npm install -g yarn
RUN yarn --pure-lockfile

RUN apk del build-base

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]
