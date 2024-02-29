FROM ruby:2.7.6

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client 

WORKDIR /movies_backend

ENV RAILS_LOG_TO_STDOUT="true" \
    RAILS_SERVE_STATIC_FILES="true" 

COPY Gemfile /movies_backend/Gemfile
COPY Gemfile.lock /movies_backend/Gemfile.lock
RUN echo '' > Gemfile.lock
RUN bundle install
RUN bundle update

EXPOSE 4000

CMD ["rails", "server", "-b", "0.0.0.0"]
