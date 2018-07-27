FROM ubuntu:16.04
RUN apt update && \
  apt -y install curl && \
  echo 'deb [arch=amd64] http://archive.cloudera.com/cdh5/ubuntu/xenial/amd64/cdh xenial-cdh5 contrib' > /etc/apt/sources.list.d/cdh.list && \
  curl https://archive.cloudera.com/cdh5/ubuntu/xenial/amd64/cdh/archive.key | apt-key add - && \
  apt update && \
  apt -y install hadoop-client krb5-user && \
  rm -rf /var/lib/apt/lists/*
