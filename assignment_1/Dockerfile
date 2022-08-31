# FROM ruby:3.1.2 as base
# RUN apt update && apt install nodejs npm -y && gem install rails bundler
# WORKDIR /myapp
# COPY Gemfile* package* ./
# RUN bundle install && npm install
# COPY . .
# CMD ["rails", "s" ,"-b" ,"0.0.0.0","-p","3000"]


FROM ruby:3.1.2-alpine
RUN apk update && apk add --update nodejs npm tzdata postgresql-dev build-base &&  rm -rf /var/cache/apk/* 
WORKDIR /myapp
COPY package* Gemfile* ./
RUN bundle install  && npm install 
COPY . .
EXPOSE 3000

CMD [ "sh","-c","rm -f tmp/pids/server.pid ; bundle exec rails s -p 3000 -b '0.0.0.0'" ]
