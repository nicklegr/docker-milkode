FROM ruby

RUN apt-get -y update
RUN apt-get -y install git
# RUN apt-get -y install build-essential

RUN gem install milkode --no-ri --no-rdoc
RUN milk init --default

EXPOSE 9292

CMD ruby ./run.rb
