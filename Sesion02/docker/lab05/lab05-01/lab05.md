1. Crear contenedor con docker compose

 ```bash
    docker-compose up -d
    docker-compose -f <<name-docker-compose>> up -d

 ```

2. Ver contenedores corriendo con docker compose

 ```bash
    docker-compose ps
 ```

3. Ingresar a contenedor

 ```bash
   docker exec -it <<container-name>> bash
 ```
4. Detener contenedor
 ```bash
    docker-compose  -f docker-compose-v1.yaml down
    docker-compose  -f docker-compose-v1.yaml rm
    rm -fr jenkins_home
 ```

Laboratorio:

Crear docker-compose para jenkins (10 minutos)
