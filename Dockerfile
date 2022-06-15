FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -\
  && apt-get update -qq && apt-get install -qq --no-install-recommends \
    nodejs \
  && apt-get upgrade -qq \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*\
  &&  npm install -g yarn@ 
  
RUN mkdir /usr/src/facebook-rails-tdd
WORKDIR /usr/src/facebook-rails-tdd
COPY Gemfile /facebook-rails-tdd/Gemfile
COPY Gemfile.lock /facebook-rails-tdd/Gemfile.lock
ADD . /usr/src/facebook-rails-tdd
RUN gem install bundler
RUN bundle install

# Add a script to fix a Rails-specific issue that prevents the server from restarting when a certain server.pid file pre-exists.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000