# Node
## Settings

1. Instalar plugins Node
    1. Login
    1. Manage Jenkins
    1. Manage Plugins
    1. Clic Avialable
    1. Buscar Plugin: "NodeJS"
    1. Clic en Install without restart

1. Instalar nodejs
    1. Manage Jenkins
    1. Global Tool Configuration
    1. Ir a la sección: "NodeJS"
    1. Clic en "Add NodeJS"
        * Name: node-default
        * Install automatically: Check
        * Version: 16.11.1

## JOBS
1. Crear 07-nodejs-job
    * Crear proyecto del estilo libre.
        * Nombre: 07-nodejs-job
        * Description: Node demo
        * Build Environment: Provide Node & npm bin/ folder to PATH
        * Build --> add execute shell --> 
        ```shell         
        npm version
        ```        

1. Crear 07-script-nodejs-job
    * Crear proyecto del estilo libre.
        * Nombre: 07-script-nodejs-job
        * Description: Node demo
        * Build --> Execute NodeJS script --> 
        ```shell         
        console.log("ok");
        console.log(process.version);
        ```  

