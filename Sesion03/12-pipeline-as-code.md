# Maven
## Settings
1. Instalar plugins maven
    1. Login
    1. Manage Jenkins
    1. Clic Avialable
    1. Buscar Plugin: "Docker"
    1. Clic en Install Without restart
    
1. Crear Carpeta Pipelines

# Pipelines
1. Crear 01-pipeline
* Nombre: 01-pipeline
        * Description: Mi primer pipeline
        * Pipeline
            * Definition: Pipeline script -->

        ```         
        pipeline {
            // Cualquier agente
            agent none

            stages {
                stage('Build') {
                    steps {
                        echo 'Building..'
                    }
                }
            }
        }
        ```
              
 
 1. Crear 02-pipeline-esqueleto
* Nombre: 02-pipeline-esqueleto
        * Description: Mi primer pipeline
        * Pipeline
            * Definition: Pipeline script -->
              ```groovy              
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
