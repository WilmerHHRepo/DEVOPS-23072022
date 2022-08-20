# Docker
## Settings
1. Instalar plugins docker
    1. Login
    1. Manage Jenkins
    1. Manage Plugins
    1. Clic Avialable
    1. Buscar Plugin: "Docker"
    2. Buscar Plugin: "Docker Pipeline"
    
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
              stage('Hello World') {
                steps {
                  sh 'echo Hola DevOps Enginers...'
                }
              }
              stage('docker Containers') {
                steps {
                  sh 'docker ps'
                }
              }
            }
        }
        ```
        
1. Crear 02-esqueleto-pipeline
    * Crear proyecto del estilo libre.
        * Nombre: 02-esqueleto-pipeline
        * Description: Pipeline esqueleto
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
              stage('Testing') {
                steps {
                  sh 'echo testing...'
                }
              }
              stage('SonarQube') {
                steps {
                  sh 'echo sonarqube...'
                }
              }
              stage('Deploy to Dev') {
                steps {
                  sh 'echo deploy to dev...'
                }
              }
              stage('Deploy ok?') {
                steps {
                  sh 'echo El cambio fue correcto?'
                }
              }
              stage('Deploy to UAT') {
                steps {
                  sh 'echo deploy to dev...'
                }
              }
              stage('Deploy ok?') {
                steps {
                  sh 'echo El cambio fue correcto?'
                }
              }
              stage('Deploy to Prod') {
                steps {
                  sh 'echo deploy to dev...'
                }
              }
              stage('Deploy ok?') {
                steps {
                  sh 'echo El cambio fue correcto?'
                }
              }     
              stage('RollBack!!') {
                steps {
                  sh 'echo Error!! Rolball!!'
                }
              }                   
          }
        }
        ``` 
