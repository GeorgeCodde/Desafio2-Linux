4. **Problema propuesto**

Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado _Lista_Precios_ en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo sea vulnerado porque otros empleados utilizan su equipo al finalizar su turno. Actualmente, Roxs posee una contraseña segura, pero él necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs?

> **Considere lo siguiente para solucionar el problema.**
>
> Para proveer una solución apropiada para restringir accesos no autorizados al archivo, se necesita realizar lo siguiente:
>
> 1.  Identificar las medidas de seguridad a implementarse.
> 2.  Identificar el tipo de usuarios para quienes los permisos >serán cambiados.
> 3.  Identificar el tipo de permiso que necesita ser cambiado.
> 4.  Verificar los permisos de acceso al archivo.

- **_Respuesta a problema propuresto_**

Se implementara un script que valide constantemente los permisos de accesos al archivo **_Lista_Precios_** los cuales deben de ser siempre de lectura y escritura solo y unicamente para el usuario dueño del archivo es decir los permisos deberian verse de la siguiente forma **-rw-------**.
En dado caso que en cualquier momento la verificación de como resultado que es diferente a lo definido, realizara el cambio de forma automatica.
