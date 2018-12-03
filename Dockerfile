FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /micro-series
WORKDIR /micro-series

COPY Gemfile /micro-series/Gemfile
COPY Gemfile.lock /micro-series/Gemfile.lock

RUN bundle install

COPY . /micro-series
