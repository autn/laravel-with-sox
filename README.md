# Usage #

Recommendation use docker-compose like below:

  Directory Structure

  docker-compose.yml

  ``` bash
  version: "2"
  services:
    api_common:
      image: autn/laravel-with-sox:1
      volumes:
        - .:/var/www/app
      environment:
        - WEBROOT=/var/www/app/public
      working_dir: /var/www/app
    api:
      extends:
        service: api_common
      depends_on:
        - db
      ports:
        - 12000:80
    test:
      extends:
        service: api_common
      depends_on:
        - dbtest
    # ... more services
  ```
