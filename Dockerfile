FROM m4rkw/ubuntu

RUN apt-get -yq install build-essential ruby ruby-dev libmysqlclient-dev

RUN gem install rails

RUN useradd -m rails

ADD assets /

RUN chown -R rails:rails /home/rails

WORKDIR /home/rails

RUN sudo -u rails bundler install --path /home/rails/.gem

EXPOSE 80
