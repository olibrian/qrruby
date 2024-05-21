# SPDX-FileCopyrightText: 2024 Olivier Brian <mail@obrian.ch>
#
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ruby:3.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
CMD ["rails", "server"]
