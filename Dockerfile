FROM ruby:3.1.2

RUN set -ex \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - &&\
apt-get install -y nodejs

RUN gem install bundler
RUN gem install middleman

ENV HISTFILE=/usr/src/.bash_history
