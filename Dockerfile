FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.4-java

RUN gem install engineyard-visualvm --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ey-visualvm"]
CMD ["--help"]
