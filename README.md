# docker-hexo
Hexo on Docker

# Build

```bash
$ git clone https://github.com/ktkr3d/docker-hexo
$ docker build -t local/hexo .
```

# Docker Compose Command
```bash
$ docker-compose up -d
```

# Hexo Web Preview
`http://localhost:4000`

# Hexo Web Admin
`http://localhost:4000/admin`

# Hexo Command
- docker exec hexo-server hexo new post "Test"
- docker exec hexo-server hexo generate
- docker exec hexo-server hexo deploy
