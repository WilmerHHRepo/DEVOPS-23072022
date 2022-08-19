1. Preparación:
    * Renombrar archivo docker-compose-v1.yaml a docker-compose.yaml
    * Crear folder: 

    ```bash
    mkdir jenkins_home
    ```

1. Iniciar docker-compose
    ```bash
    docker-compose up -d
    docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
    docker exec -it jenkins bash
    ```

    ```bash         
    docker exec -it --user root jenkins /bin/bash
    chown jenkins /var/run/docker.sock
    docker exec -it jenkins /bin/bash
    ``` 


1. Detener jenkins
    ```bash
    docker-compose -f docker-compose-v1.yaml down
    docker-compose -f docker-compose-v1.yaml rm
    rm -fr jenkins_home
    ```

------

1. Create image
    ```bash   
   docker build  -t "jenkins/docker" .
    ```
