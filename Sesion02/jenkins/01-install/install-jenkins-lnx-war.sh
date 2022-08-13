#!/bin/bash
# Install Jenkins war on Centos Linux

echo "Instalar wget"
sudo yum install wget -y

echo "Agregar repositorio yum de jenkins"
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y

echo "Instalar java"
sudo yum install java-11-openjdk -y

echo "Instalar jenkins"
sudo yum install jenkins -y
    
echo "Volver a cargar el proceso systemd"
sudo systemctl daemon-reload
    
echo "Habilitar servicio de jenkins"
sudo systemctl enable jenkins

echo "Iniciar jenkins"
sudo systemctl start jenkins
