FROM node:alpine

WORKDIR /hexo

RUN \
  apk add --no-cache git openssh-client \
  && npm config set unsafe-perm true \
  && npm install hexo-cli -g \
  && hexo init . \
  && npm install \
  && npm install hexo-deployer-git --save \
  && npm install hexo-admin --save

# VOLUME ["/hexo/source", "/hexo/themes", "/root/.ssh"]

EXPOSE 4000

COPY hexo-deploy.sh /hexo/hexo-deploy.sh
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/bin/sh"]
