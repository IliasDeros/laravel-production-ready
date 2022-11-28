<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>
</p>

Example of a laravel stack running on docker in dev and in production.

Production setup is based off https://github.com/richdynamix/arc

```sh
# Open shell
docker-compose run --rm --entrypoint sh php
```

## Development Environment

Use `src/blog/docker-compose.yml` for local development

```sh
cd src/blog/docker-compose.yml
docker-compose up
# See your app at http://localhost
```

## Deploying to production

For complex apps with multiple microservices, you can refer to the kubernetes-ready script at`src/blog/tools/travis/deploy/production.sh`
For a simple php app like this one, you only need to dockerize the application, and connect to your existing database & cache.
```sh
cd src/blog/
docker-compose build web
```