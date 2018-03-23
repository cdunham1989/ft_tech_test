FROM ruby:2.4

COPY . /app

WORKDIR /app

RUN gem install bundler

RUN bundle install

EXPOSE 9292

# bind server to all addresses within container and force port to always be 9292
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "--port", "9292"]