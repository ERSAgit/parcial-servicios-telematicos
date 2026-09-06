\# Análisis de Seguridad — Túnel Cloudflared



\## Riesgos de exponer un servidor con túnel público



\*\*1. Superficie de exposición\*\*

Al activar el túnel, el servidor queda expuesto a internet completo.

Cualquier persona en el mundo puede acceder al sitio, no solo

los usuarios previstos. Esto aumenta el riesgo de ataques como

fuerza bruta, scraping o exploración de vulnerabilidades.



\*\*2. Ausencia de autenticación\*\*

El túnel no tiene ningún mecanismo de autenticación por defecto.

Cualquiera que tenga la URL puede acceder al contenido sin

identificarse. En un entorno real con datos sensibles esto sería

un problema grave.



\*\*3. Límites del plan gratuito\*\*

El plan gratuito de Cloudflare Tunnel no garantiza uptime,

puede ser desactivado en cualquier momento por Cloudflare,

y la URL cambia cada vez que se reinicia el túnel.



\*\*4. Exposición mientras está activo\*\*

El túnel expone el servidor durante todo el tiempo que está

corriendo. Si se olvida apagarlo, el servidor queda expuesto

indefinidamente.



\## Mitigaciones propuestas



\*\*Mitigación 1 — Autenticación básica con Apache\*\*

Agregar autenticación HTTP básica al sitio para que solo usuarios

con usuario y contraseña puedan acceder:



```apache

<Directory "/var/www/parcial">

&#x20;   AuthType Basic

&#x20;   AuthName "Acceso restringido"

&#x20;   AuthUserFile /etc/apache2/claves

&#x20;   Require valid-user

</Directory>

```



\*\*Mitigación 2 — Apagar el túnel al terminar\*\*

El túnel solo debe estar activo durante las pruebas. Al terminar

se detiene con Ctrl+C. Nunca dejarlo corriendo sin supervisión.



\*\*Mitigación 3 — Restricción por IP\*\*

Limitar el acceso solo a IPs conocidas usando Apache:



```apache

<Directory "/var/www/parcial">

&#x20;   Require ip 192.168.50.0/24

</Directory>

```

