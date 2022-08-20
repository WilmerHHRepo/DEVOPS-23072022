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
