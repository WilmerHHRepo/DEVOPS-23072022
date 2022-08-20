# JOBS
1. Crear 07-maven-from-git-pipeline
    * Crear proyecto del Pipeline
        * Nombre: 07-maven-from-git-pipeline
        * Description: Pipeline as code
        * Pipeline --> Pipeline script --> 
        ```bash         
        pipeline {
            agent {
                docker { image 'maven:3.6.3-openjdk-11-slim' }
            }
            stages {
                stage('Checkout') {
                    steps {
                        git branch: 'main', credentialsId: 'github', url: 'https://github.com/aldo2510/galaxy-jenkins-lab-maven.git'
                    }
                }
            }
        }
        ```

1. Crear 08-maven-from-git-pipeline
    * Crear proyecto del Pipeline
        * Nombre: 08-maven-from-git-pipeline
        * Description: Pipeline as code
        * Pipeline --> Pipeline from SCM --> Git
        * Repository Url:

        }
        ```
