FROM node:lts-alpine3.10
LABEL MAINTAINER="Neil Kuan"
LABEL NAME="ci-nodejs-awscli"
LABEL Version="v1.0"
ENV PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
RUN mkdir /root/bin /aws; \
    apk -Uuv add python py-pip jq curl && \
    pip install --upgrade pip; \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*
ENTRYPOINT [""]

