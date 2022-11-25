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
        start$ docker run --rm -it -v $(pwd)/linux/centos/7/data:/data --env-file ./linux/centos/7/.env --name centos-7 $(docker build -q -f linux/centos/7/Dockerfile -t centos7 .)

        stop$ Just Ctrl+C or exit
        ```
    - __Centos8__
        ```shell
        start$ docker run --rm -it -v $(pwd)/linux/centos/8/data:/data --env-file ./linux/centos/8/.env --name centos-8 $(docker build -q -f linux/centos/8/Dockerfile -t centos8 .)

        stop$ Just Ctrl+C or exit
        ```
    - __Centos9__
        ```shell
        start$ docker run --rm -it -v $(pwd)/linux/centos/9/data:/data --env-file ./linux/centos/9/.env --name centos-9 $(docker build -q -f linux/centos/9/Dockerfile -t centos9 .)

        stop$ Just Ctrl+C or exit
        ```
    - __Ubuntu__
        
        Use Dockerfile: 
        ```shell
        start$ docker run --rm -it -v $(pwd)/linux/ubuntu/22.04/data:/data  --env-file ./linux/ubuntu/22.04/.env --name ubuntu-22.04 $(docker build -q -f linux/ubuntu/22.04/Dockerfile -t ubuntu22.04 .)

        stop$ Just Ctrl+C or exit
        ```

        Use Docker-compose:  
        ```shell  
        start$ docker compose -f ./linux/ubuntu/22.04/docker-compose.yml up -d --build --remove-orphans --no-deps

        attach_to_container$ docker exec -it ubuntu-22.04 /bin/bash

        stop$ docker compose -f ./linux/ubuntu/22.04/docker-compose.yml down
        ```
    - __Apline__

        Use Dockerfile:
        ```shell
        start$ docker run --rm -it -v $(pwd)/linux/apline/3.16/data:/data --env-file ./linux/apline/3.16/.env --name apline-3.16 $(docker build -q -f ./linux/apline/3.16/Dockerfile -t apline3.6 .)

        stop$ Just Ctrl+C or exit
        ```

3. Python:
    - __3.6.8__

        ```shell
        start$ docker run --rm --name python3.6.8 -it $(docker build -q -f python/3.6.8/Dockerfile -t python3.6.8 .)
        ```

## Author

    - Jakub Kabat - github:jaxa1337