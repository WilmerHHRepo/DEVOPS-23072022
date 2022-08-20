1. Ir a la carpeta 01-install de la sesión 02 y ubicarse donde está el archivo docker-compose.yaml

1. Limpiar
    ```bash
    docker-compose -f docker-compose-sonarqube.yaml down
    ```
        
1. Iniciar jenkins con sonarque
    ```bash
    docker rm $(docker ps -aq) -f

    docker-compose -f docker-compose-v3.yaml build
    docker-compose -f docker-compose-v3.yaml up -d
    ```
