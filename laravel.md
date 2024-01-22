# ÍNDICE

+ [Material empleado](#id1)
+ [Desarrollo](#id2)

# ***Material empleado***. <a name="id1"></a>

- Nginx
- PHP
- Composer
- PostgreSQL + datos
- pgAdmin
- CertBot

## ***Desarrollo***. <a name="id2"></a>

Creamos el proyecto con: composer create-project laravel/laravel travelroad_laravel (En mi caso lo cree dentro de un repositorio en el home de mi usuario y luego lo moví a /usr/share/nginx)  
Esto tendrá que generar un .gitignore y un .env con una app_key (En caso de que no, generarlo manualmente)
Cambiamos el .env quedando con el siguiente contenido:  

![imagen](img/1.png)  

Cambiamos los permisos del storage para el usuario nginx usando:  
``` sudo chgrp -R nginx storage bootstrap/cache ```  
``` sudo chmod -R ug+rwx storage bootstrap/cache ```
Cambiamos las vistas llendo a resources/views, dicho directorio tiene el siguiente contenido:  

![imagen](img/2.png)  

Las vistas tienen el siguiente contenido:  
travelroad.blade.php:  
![imagen](img/3.png)  
visited.blade.php:  
![imagen](img/4.png)  
wished.blade.php:  
![imagen](img/5.png)  

Volvemos a la raíz del proyecto y cambiamos routes/web.php con el siguiente contenido:  
![imagen](img/6.png)  

Creamos travelroad_laravel.conf en /etc/nginx/conf.d con el siguiente contenido:  
![imagen](img/7.png)  

Creamos un script para conectarse y actualizar la máquina de producción:
![imagen](img/8.png)  

En la máquina de producción bajamos y movemos a la ruta correspondiente el repositorio(
