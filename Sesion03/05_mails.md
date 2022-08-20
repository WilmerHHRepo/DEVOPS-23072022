1. Configurar cuenta en:
    https://mailtrap.io/inboxes/1514511/messages#
    
1. Instalar plugins docker pipeline
    1. Login
    1. Manage Jenkins
    1. Manage Plugins
    1. Clic Avialable
    1. Buscar Plugins: "Mailer"

1. Configurar mail
    1. Login
    1. Manage Jenkins
    1. Configure System
    1. E-mail Notification, clic en "Advance"
    1. Settings:
        1. "SMTP Server": smtp.mailtrap.io
        1. "Use SMTP Authentication"
        1. "User": "user"
        1. "Password": "password"
        1. Use TLS: true
        1. SMTP Port: 465
        1. Reply address: noreply@gmail.com
        1. Charset: UTF-8



1. Para Gmail, se debe realizar lo siguiente:
    1. Ir a Gestionar tu cuenta de google
    1. Ir a Seguridad
    1. Activar verificación en 2 pasos
    1. En Iniciar Google, ir a Contraseña de aplicaciones
    1. En Seleccionar Aplicación, seleccionar correo
    1. En dispositivo colocar otro y escribir Jenkins
    2. Luego clic en generar
1. Replicar los mismos pasos con smtp.gmail.com
