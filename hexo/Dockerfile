FROM node:alpine

WORKDIR /hexo

RUN \
  apk add --no-cache git openssh-client \
  && npm install hexo-cli -g \
  && hexo init . \
  && npm install \
  && npm install hexo-generator-sitemap --save \
  && npm install hexo-generator-feed --save \
  && npm install hexo-generator-searchdb --save \
  && npm install hexo-deployer-git --save \
  && npm install hexo-tag-bootstrap --save \
  && npm install hexo-generator-search --save \
  && npm install hexo-admin --save

VOLUME ["/hexo/source", "/hexo/themes", "/root/.ssh"]

EXPOSE 4000

COPY hexo-deploy.sh /hexo/hexo-deploy.sh
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ['/bin/bash']
