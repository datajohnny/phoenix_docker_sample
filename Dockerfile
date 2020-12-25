FROM elixir:latest

RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y -q nodejs && \
    mix local.hex --force && \
    mix archive.install hex phx_new 1.5.7 --force && \
    mix local.rebar --force

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
