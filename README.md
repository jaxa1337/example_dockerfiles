## How to start containers

1. DB:
    - Mariadb:
        ```shell
        docker compose -f ./db/mariadb/docker-compose.yml --env-file ./db/mariadb/.env up -d --build --remove-orphans --no-deps
        ```
    - MySQL:
        ```shell
        docker compose -f ./db/mysql/docker-compose.yml --env-file ./db/mysql/.env up -d --build --remove-orphans --no-deps
        ```

2. Simple Linux:
    - Centos7
        ```shell
        docker run --rm -it $(docker build -q -f linux/centos/7/Dockerfile -t centos7 .)
        ```
    - Centos8
        ```shell
        docker run --rm -it $(docker build -q -f linux/centos/8/Dockerfile -t centos8 .)
        ```
    - Centos9
        ```shell
        docker run --rm -it $(docker build -q -f linux/centos/9/Dockerfile -t centos9 .)
        ```
    - Ubuntu
        ```shell
        docker run --rm -it -v $(pwd)/linux/ubuntu/22.04/data:/data $(docker build -q -f linux/ubuntu/22.04/Dockerfile -t ubuntu22.04 .)
        docker compose -f ./linux/ubuntu/22.04/docker-compose.yml --env-file ./linux/ubuntu/22.04/.env up -d --build --remove-orphans --no-deps
        ```
    - Apline
        ```shell
        docker run --rm -it $(docker build -q -f linux/aplline/Dockerfile -t apline .)
        ```

3. Python:
    - 3.6.8
        ```shell
        docker run --rm --name python3.6.8 -it $(docker build -q -f python/3.6.8/Dockerfile -t python3.6.8 .)
        ```

## Author
    - Jakub Kabat - github:jaxa1337