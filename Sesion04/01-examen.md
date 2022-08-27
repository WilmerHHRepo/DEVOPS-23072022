# Maven Pipeline

1. Crear un pipeline de maven teniendo en cuenta lo siguiente:
    - Instalar el plugin "Copy ArtifactVersion"
    - Crear un repositorio publico que tenga la siguiente nomenclatura:
      - galaxy-examen-final-apellido-nombre
    - Copiar el contenido del repositorio https://github.com/aldo2510/galaxy-jenkins-lab-maven.git y pegarlo en el repositorio creado anteriormente.
    - Crear un archivo Jenkinsfile en la raíz del repositorio
    - El Jenkinsfile debe correr en el agent any
    - El Jenkinsfile debe contener los siguientes stages:
      - checkout (stage se crea al crear el pipeline, no es necesario colocarlo en el código)
      - build (debe compilar la aplicación maven, debe correr en el agent docker 'maven:3.6.3-openjdk-11-slim')
      - SonarQube (debe contener los parametros)
      - Build docker Image
      - Push docker Image
      - Run Container







2. Crear 07-maven-from-git-pipeline
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

3. Crear 08-maven-from-git-pipeline
    * Crear proyecto del Pipeline
        * Nombre: 08-maven-from-git-pipeline
        * Description: Pipeline as code
        * Pipeline --> Pipeline from SCM --> Git
        * Repository Url: https://github.com/aldo2510/DEVOPS-23072022.git
        * Branch: */main
        * Jenkinsfile Path: Sesion03/Jenkinsfiles/Jenkinsfile-scm

        }
        ```
