# README

rails api for docker

### Ruby and rails info

```shell
$ rake about
About your application's environment
Rails version             7.0.4
Ruby version              ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]
RubyGems version          3.3.20
Rack version              2.2.4
```

### Start up

```shell
docker-compose build
docker-compose run web rails db:create
docker-compose run web rake db:migrate
docker-compose up -d
```

### Check it works
  
`http://localhost:3000/`

### Rspec execute

```shell
docker exec -it regex_web_1 bash
bundle exec rspec
```
