# CloudBotTest / README.

Para que pueda funcionar todo este repositorio se necesita conectar a GoogleCloud/CloudRun & CloudBuild.

- Paso 1:
    Ingresar a GoogleCloud y abrir CloudShell

- Paso 2:
    Abrir Editor

- Paso 3:
    En CloudShell escribir:
        $ mkdir NombreDelProyecto
        $ cd NombreDelProyecto/
        $ touch server.js
        $ ls
        $ cloudshell edir server.js
        
- Paso 4: 
    Copiar lo escrito en el archivo 'server.js' de este repositorio
    
- Paso 4:
    En CloudShell escribir:
        $ node server.js
    Esto se escribe para hacer correr el codigo, en CloudShell se deberia poder leer 'New connection'

- Paso 5: 
    Conectar Dockerfile
    En CloudShell escribir:
        $ touch Dockerfile
        $ cloudshell edit Dockerfile

- Paso 6:
    Copiar lo escrito en el archivo 'Dockerfile' de este repositorio
    
- Paso 7:
    En CloudShell escribir:
    $ docker build -t NombreDeTag
    Esto creara el dockerfile, demora 1 min aproximadamente.
    
- Paso  8:
    En CloudShell escribir:
    $ docker run -it -p 8080:8080 NombreDeTag
    Esto Abrira un browser mostrando lo escrito en 'server.js' que en este caso es 'Hello SellSide'
    Para salir de esto volvemos a CloudShell y presionamos CTRL+C
    
- Paso 9:
    Ahora conectamos Github con google cloud
    Para esto:
        - Vamos a Cloud Build y lo conectamos
        - Nos vamos a Triggers
        - Seleccionamos GitHub(mirrored)
        - Nos autenticamos
        - Seleccionamos nuestro repositorio creado y damos clic en 'Connect repository'
        - Presionamos 'Add trigger'
        - Dejamos todo en default (aun que podemos acortar el nombre de nuestro proyecto borrando la parte que dice 'github - nombre del usuario de github'
        - Presionamos en 'Create trigger'
        - Ahora presionamos en 'Run trigger' y comenzara a clonar el repositorio a la nube de gCloud.
        -
       
    
- Paso 10:
