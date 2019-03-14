FROM docker:18.09-dind

# install python3
RUN apk add --update \
      python3 \
      groff \
      less \
    && pip3 install --upgrade pip setuptools docker-compose

# install awscli
RUN pip3 --no-cache-dir install --upgrade awscli

# clean up
RUN rm -rf /var/cache/apk/*
