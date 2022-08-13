# Install Jenkins war on Centos Linux

1. Instalar wget

    ```console
    sudo yum install -y wget
    ```

3. Agregar repositorio yum de jenkins

    ```console
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    sudo yum upgrade -y
    ```
1. Instalar java

    ```console
    sudo yum install -y java-11-openjdk
    ```
1. Instalar jenkins

    ```console
    sudo yum install -y jenkins
    ```
    
1. Volver a cargar el proceso systemd

    ```console
    sudo systemctl daemon-reload
    ```
    
1. Habilitar servicio de jenkins

    ```console
    sudo systemctl enable jenkins

    ```
    
1. Iniciar jenkins

    ```console
    sudo systemctl start jenkins

    ```

1. Verificar estado del servicio de jenkins

    ```console
    sudo systemctl status jenkins

    ```
    
    
 1. Obtener token de jenkins

    ```console
    sudo cat /var/lib/jenkins/secrets/initialAdminPassword
    ```
