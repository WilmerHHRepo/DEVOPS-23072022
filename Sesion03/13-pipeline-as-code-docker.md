# JOBS
1. Crear 03-none-agent-pipeline
    * Crear proyecto del Pipeline
        * Nombre: 03-none-agent-pipeline
        * Description: Pipeline as code
        * Pipeline --> Pipeline script --> 
        ```bash         
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

1. Crear 04-node-as-code-pipeline
    * Crear proyecto del Pipeline
        * Nombre: 04-node-as-code-pipeline
        * Description: Pipeline as code
        * Pipeline --> Pipeline script --> 
        ```Groovy         
        pipeline {
            // imagen node
            agent {
                docker { image 'node:latest' }
            }

            stages {
                stage('Build') {
                    steps {
                        echo 'Building..'
                        sh 'npm version'
                    }
                }
            }
        }
        ```
1. Crear 05-maven-as-code-pipeline
    * Crear proyecto del Pipeline
        * Nombre: 05-maven-as-code-pipeline
        * Description: Pipeline as maven
        * Pipeline --> Pipeline script --> 
        ```Groovy         
        pipeline {
            // imagen maven
            agent {
                docker { image 'maven:3.6.3-openjdk-11-slim' }
            }

            stages {
                stage('Build') {
                    steps {
                        sh 'mvn --version'
                    }
                }
            }
        }
        ```

1. Crear 06-maven-as-code-pipeline
    * Crear proyecto del Pipeline
        * Nombre: 06-maven-as-code-pipeline
        * Description: Pipeline as code
        * Pipeline --> Pipeline script --> 
        ```Groovy         
        pipeline {
            // imagen dotnet
            agent {
                docker { image 'mcr.microsoft.com/dotnet/sdk:5.0' }
            }

            stages {
                stage('Build') {
                    steps {
                        sh 'dotnet --version'
                    }
                }
            }
        }
        ```     
