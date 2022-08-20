
1. Ir a la carpeta 01-install de la sesión 02 y ubicarse donde está el archivo docker-compose.yaml

1. Limpiar
    ```bash
    docker-compose down
    ```
        
1. Iniciar jenkins con sonarque
    ```bash
    docker rm $(docker ps -aq) -f

    mkdir -p sonarqube_home/data
    mkdir -p sonarqube_home/extensions
    mkdir -p sonarqube_home/logs
    mkdir -p sonarqube_home/temp

    docker-compose -f docker-compose-sonarqube.yaml up -d
    ```
