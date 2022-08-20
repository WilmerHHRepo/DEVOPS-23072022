# Maven
## Settings
1. Instalar plugins maven
    1. Login
    1. Manage Jenkins
    1. Manage Plugins
    1. Clic Avialable
    1. Buscar Plugin: "Maven Integration"
    1. Buscar Plugin: "Git"
    1. Buscar Plugin: "JUnit Attachments"
    1. Clic en Install Without restart
    
1. Instalar maven
    1. Manage Jenkins
    1. Global Tool Configuration
    1. Ir a la sección: "Maven"
    1. Clic en "Add Maven"
        * Name: maven-default
        * Install automatically: Check
    1. Clic en Save



# JOBS
1. Crear 06-job-maven
    * Crear proyecto del estilo libre.
        * Nombre: 06-job-maven
        * Description: Maven demo
        * Build --> Invoke top-level Maven targets --> 
        * Maven version: maven-default
        * Goals:
        ```bash         
        mvn --version
        ```
1. Update job6-maven
    * Crear proyecto del estilo libre.
        * Nombre: job6-maven
        * Description: Maven demo
        * Source Code Management: Git
            * Repository: https://github.com/aldo2510/galaxy-jenkins-lab-maven.git
            * Add credentials:
                * Kind: Username with Password
                * id: token_github
                * Username: aldo2510
                * Password: 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 
            * Branch: */main
        * Build --> Invoke top-level Maven targets --> 
        * Maven version: maven-default
        * Goals
        ```bash         
        package
        ```
        * Post-buil Actions
            * Add post build actions: Archive the artifacts
            * Files to archive: target/*.jar
1. Update job6-maven
    * Nombre: job6-maven
    * Post-buil Actions
        * Add Publish JUnit test result report
            * Test report XMLs: target/surefire-reports/*.xml
