# Gradle

## Settings
1. Instalar plugins gradle
    1. Login
    1. Manage Jenkins
    1. Manage Plugins
    1. Clic Avialable
    1. Buscar Plugin: "Gradle Plugin"

1. Instalar gradle
    1. Manage Jenkins
    1. Global Tool Configuration
    1. Ir a la sección: "Gradle"
    1. Clic en "Add Gradle"
        * Name: gradle-default
        * Install automatically: Check



# JOBS
1. Crear 08-gradle-job
    * Crear proyecto del estilo libre.
        * Nombre: 08-gradle-job
        * Description: Gradle demo
        * Build --> Invoke Gradle script--> 
        ```bash         
        gradle --version
        ```

1. update 09-gradle-job
    * Crear proyecto del estilo libre.
        * Nombre: 09-gradle-job
        * Description: Maven demo
        * Source Code Management: Git
            * Repository: https://github.com/aldo2510/galaxy-jenkins-lab-gradle.git
            * Branch: */main
        * Build --> Invoke gradle script --> 
        * Gradle version: gradle-default
        ```bash         
        build
        ```
        * Post-buil Actions
            * Add post build actions: Archive the artifacts
            * Files to archive: build/libs/labgradle-*-SNAPSHOT.jar

1. Instalar plugin: "Workspace Cleanup"

1. Update 09-gradle-job
    * Nombre: 09-gradle-job
    * Post-buil Actions
        * Add Publish JUnit test result report
        * Test report XMLs: **/build/test-results/test/TEST-*.xml
        * Delete workspace when build is done


