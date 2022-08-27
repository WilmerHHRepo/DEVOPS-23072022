Install plugin Deploy to container

deploy adapters: [tomcat9(credentialsId: 'tomcat', path: '', url: 'http://192.168.1.17:8885/')], contextPath: null, war: '**/*.war'


sudo yum install -y java-11-openjdk
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.82/bin/apache-tomcat-8.5.82.tar.gz
tar -xvzf apache-tomcat-8.5.82.tar.gz
chmod +x /opt/apache-tomcat-8.5.82/bin/startup.sh 
chmod +x /opt/apache-tomcat-8.5.82/bin/shutdown.sh
/opt/apache-tomcat-8.5.82/bin/startup.sh
cd /opt/apache-tomcat-8.5.82/conf
vim server.xml
# Editar el puerto 8080 a 8100
/opt/apache-tomcat-8.5.82/bin/shutdown.sh
/opt/apache-tomcat-8.5.82/bin/startup.sh

find / -name context.xml

## Comentar la linea de Value ClassName con <!-- --> 

vi /opt/apache-tomcat-8.5.82/webapps/host-manager/META-INF/context.xml
vi /opt/apache-tomcat-8.5.82/webapps/manager/META-INF/context.xml

/opt/apache-tomcat-8.5.82/bin/shutdown.sh
/opt/apache-tomcat-8.5.82/bin/startup.sh

vi tomcat-users.xml

 <role rolename="manager-gui"/>
 <role rolename="manager-script"/>
 <role rolename="manager-jmx"/>
 <role rolename="manager-status"/>
 <user username="admin" password="admin" roles="manager-gui, manager-script, manager-jmx, manager-status"/>
 <user username="deployer" password="deployer" roles="manager-script"/>
 <user username="tomcat" password="s3cret" roles="manager-gui"/>
