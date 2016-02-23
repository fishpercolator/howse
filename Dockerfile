FROM ruby:2.3
MAINTAINER Rich Daley <rich@fishpercolator.co.uk>
ENV REFRESHED_AT 2016-02-22

RUN gem install bundler

ENV APP_HOME        /usr/src/howse

RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile BUNDLE_JOBS=2 BUNDLE_PATH=/bundle

RUN bundle install

ENV RAILS_ENV       production
ENV DOMAIN_NAME     localhost
# NOTE: ALWAYS override this or your sessions will be insecure!
ENV SECRET_KEY_BASE 06e2f81da216137021b3bcdf7ac41b4daf8fbad1e330d4519eadd83eb8b97d5b9b649523f01a182f1098719456ea092bacd16b60661a8596e9f957ecfd8bbc4006e2f81da216137021b3bcdf7ac41b4daf8fbad1e330d4519eadd83eb8b97d5b9b649523f01a182f1098719456ea092bacd16b60661a8596e9f957ecfd8bbc40

ADD . $APP_HOME

#RUN RAILS_ENV=production bundle exec rake assets:precompile

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
