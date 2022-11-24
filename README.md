## How to start containers

1. DB:
    - __Mariadb__
        ```shell
        start$ docker compose -f ./db/mariadb/docker-compose.yml --env-file ./db/mariadb/.env up -d --build --remove-orphans --no-deps
        ```
    - __MySQL__
        ```shell
        start$ docker compose -f ./db/mysql/docker-compose.yml --env-file ./db/mysql/.env up -d --build --remove-orphans --no-deps
        ```

2. Linux:
    - __Centos7__
        ```shell
        start$ docker run --rm -it $(docker build -q -f linux/centos/7/Dockerfile -t centos7 .)
        ```
    - __Centos8__
        ```shell
        start$ docker run --rm -it $(docker build -q -f linux/centos/8/Dockerfile -t centos8 .)
        ```
    - __Centos9__
        ```shell
        start$ docker run --rm -it $(docker build -q -f linux/centos/9/Dockerfile -t centos9 .)
        ```
    - __Ubuntu__
        
        Use Dockerfile: 
        ```shell
        start$ docker run --rm -it -v $(pwd)/linux/ubuntu/22.04/data:/data $(docker build -q -f linux/ubuntu/22.04/Dockerfile -t ubuntu22.04 .)
        ```

        Use Docker-compose:  
        ```shell  
        start$ docker compose -f ./linux/ubuntu/22.04/docker-compose.yml up -d --build --remove-orphans --no-deps

        attach_to_container$ docker exec -it 2204-ubuntu-1 /bin/bash

        stop$ docker compose -f ./linux/ubuntu/22.04/docker-compose.yml down
        ```
    - __Apline__

        Use Dockerfile:
        ```shell
        start$ docker run --rm -it $(docker build -q -f linux/aplline/Dockerfile -t apline .)
        ```

3. Python:
    - __3.6.8__

        ```shell
        start$ docker run --rm --name python3.6.8 -it $(docker build -q -f python/3.6.8/Dockerfile -t python3.6.8 .)
        ```

## Author

    - Jakub Kabat - github:jaxa1337