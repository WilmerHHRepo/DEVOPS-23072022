# Docker
## Settings
1. Instalar plugins docker
    1. Login
    1. Manage Jenkins
    1. Manage Plugins
    1. Clic Avialable
    1. Buscar Plugin: "Docker"
    
# JOBS
1. Crear 01-hello-world-pipeline
    * Crear proyecto del estilo libre.
        * Nombre: 01-hello-world-pipeline
        * Description: Mi primer pipeline como código
        * Pipeline script:
        ```bash         
        pipeline {
          agent any
            stages {
              stage('get sources') {
                steps {
                  sh 'echo Obteniendo las fuentes de github...'
                }
              }
              stage('Build') {
                steps {
                  sh 'echo Compilando...'
                }
              }
            }
        }
        ```
