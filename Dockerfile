FROM ruby:3.0.0

RUN apt-get update -qq && \
    apt-get install -y nodejs \
                       npm && \
    npm install -g yarn

WORKDIR /hacker_log

COPY Gemfile* /hacker_log/

RUN bundle install