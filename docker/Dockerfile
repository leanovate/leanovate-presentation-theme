FROM gliderlabs/alpine:latest

ENV HUGO_VERSION=0.15
RUN apk add --update curl ca-certificates python ruby rsync git perl && \
  (curl -L https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz | tar xz)  && \
  mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/bin/hugo && \
  rm -r hugo_${HUGO_VERSION}_linux_amd64 && \
  (curl -L https://bootstrap.pypa.io/get-pip.py | python) && \
  rm /var/cache/apk/*

RUN pip install pygments
RUN gem install asciidoctor --no-ri --no-rdoc

COPY conf/rsyncd.conf /etc/rsyncd.conf
COPY scripts/run.sh /run.sh

VOLUME /project

WORKDIR /project

EXPOSE 1313 873

ENTRYPOINT ["/run.sh"]

CMD []
