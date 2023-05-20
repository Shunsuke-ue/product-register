FROM ruby:3.1-bullseye
RUN apt-get update && apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	postgresql-client \
	yarn \
	imagemagick
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install