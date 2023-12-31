FROM ruby:3.0.2-alpine

RUN gem install bundler -v 2.4.18

ARG PACKAGES="build-base nano bash postgresql-dev postgresql-client libffi-dev"
RUN apk update && apk upgrade && apk add --update $PACKAGES

COPY Gemfile Gemfile.lock ./

RUN bundle install

WORKDIR /usr/src/app

CMD ["rails", "s", "-b", "0.0.0.0"]