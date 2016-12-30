# docker-hexo
Hexo on Docker

## Build Image
```bash
$ git clone https://github.com/ktkr3d/docker-hexo.git
$ cd docker-hexo
$ docker build -t local/hexo .
```

## Docker Compose Commands
```bash
$ docker-compose up -d
$ docker-compose down
```

## Hexo Web Preview
[http://localhost:4000](http://localhost:4000)

## Hexo Web Admin
[http://localhost:4000/admin](http://localhost:4000/admin)  
See also https://github.com/vladpurga/hexo-admin-deploy-command

## Hexo Commands
```bash
$ docker exec hexo-server hexo new post "Test"
$ docker exec hexo-server hexo generate
$ docker exec hexo-server hexo deploy
```
