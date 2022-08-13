# Lab03

### Docker manager

1. Comandos Básicos:
    
    docker help     : permite ver la ayuda de docker
    docker pull	    : descarga una imagen de un contenedor
    docker push     : subir una imagen de contenedor personalizada
    docker run	    : Crea y ejecuta un contenedor  
    docker restart	: Reinicia un contenedor existente  
    docker stop	    : Para un contenedor  
    docker pause	: Pausa un contenedor  
    docker kill	    : Para el contenedor abruptamente  
    docker unpause	: Reanuda un contenedor pausado  
    docker rm	    : Borra un contenedor
    docker login    : permite conectarte a un repositorio de imagenes

2. Ver versión de un contenedor:
   
    ```bash
    docker -v
    ```

3. Ejecutar Hola Mundo en Docker:
   
    ```bash
    docker run hello-world
    ```

4. Crear containers [nginx](https://hub.docker.com/_/nginx) 
    
    ```bash
    docker pull nginx
    docker pull nginx:latest
    docker run -p 8080:80 nginx:alpine
    docker run -d -p 8888:80 nginx:latest
    docker run -d -p 8889:80 --name nginx-devops nginx:latest
    ```

5. Listar imagenes:
    
    ```bash
    docker images
    docker image ls
    ```

6. Ver contenedores corriendo:
   
    ```bash
    docker ps
    ```

7. Crear containers [tomcat](https://hub.docker.com/_/tomcat) 
    ```bash
    docker run -p 9000:8080 tomcat:9-slim
    docker run -p 9000:8080 -d tomcat:9-slim
    ```
8. Crear containers [mysql](https://hub.docker.com/_/mysql) 
    ```bash
    docker run -e MYSQL_ROOT_PASSWORD=password -d mysql:8.0
    docker exec -it <<id>> /bin/sh
    mysql -h localhost -u root -p
    show databases;
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | mysql              |
    | performance_schema |
    | sys                |
    +--------------------+
    docker run -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=ventas -d mysql:8.0
    docker exec -it <<id>> /bin/sh
    mysql -h localhost -u root -p
    show databases;
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | mysql              |
    | performance_schema |
    | sys                |
    | ventas             |
    +--------------------+
    printenv
    sudo docker rm eaf703346312 -f

    docker run -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=ventas -p 3307:3306 -d mysql:8.0
    ```

9. Crear containers [redis](https://hub.docker.com/_/redis) 
    ```bash
    docker run -d redis:alpine
    docker run -d -p 6379:6379 redis:alpine
    
    docker exec -it <<id>> /bin/sh
    redis-cli
    SET "limits:12345678" 100
    SET "limits:12345679" 100
    SET "limits:12345689" 100
    GET "limits:12345679"
    ```


10. Crear containers [mongo](https://hub.docker.com/_/mongo)  
    ```bash
    docker run -d mongo:latest
    docker exec -it <<id>> /bin/sh
    mongo
    show dbs
    use shop
    db.products.insertOne({name:"A book A",pice: 10})
    db.products.insertOne({name:"A book B",pice: 11,category:"a"})
    db.products.find()
    db.products.find().pretty()
    ```


11. Crear node [node](https://hub.docker.com/_/node)  
    ```bash
    docker run -it node:current-alpine3.11 /bin/sh
    docker exec -it <<id>> /bin/sh
    node
    a=1;
    b=2;
    console.log(a+b);
    process.exit(1);
    ```

12. Jenkins [Jenkins](https://hub.docker.com/_/jenkins)  
    ```bash
    docker run -p 8080:8080 jenkins:alpine
    ```
13. Volumenes Jenkins [Jenkins](https://hub.docker.com/_/jenkins)  
    ```bash
    mkdir jenkins_home
    ls
    docker run -d -p 9004:8080 --name jenkins-dev3 -v $PWD/jenkins_home:/var/jenkins_home jenkins/jenkins
    docker ps

    localhost:9001
    ```

14. Listar containers
    ```bash
    docker ps
    docker ps -a
    docker ps -aq
    docker rm $(docker ps -aq) -f
    ```
15. Loguearse en dockerhub
    ```bash
    docker login
    ```


16. Liberar recursos

    Docker proporciona un solo comando que eliminará cualquier recurso (imágenes, contenedores, volúmenes y redes) que estén pendientes (no asociados con un contenedor):

    ```bash
    docker system prune -a
    ```


Ejercicios:

1. Crear contenedor nginx con el tag latest, que ejecute por el puerto 8801 en background y que se llame nginx-jenkins (4 minutos)

2. Crear contenedor sonarqube con el tag sonarqube:8.9.9-community, que se llame sonarqube-devops y que ejecute en background por el puerto 9500 (4 minutos)

3. Crear contenedor jenkins en background con el tag latest, que ejecute en el puerto 9002 y que se llame jenkins-sesion01 (4 minutos)

4. Eliminar todos los contenedores creados (1 minuto)
