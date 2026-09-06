\# Analisis de Seguridad - Tunel Cloudflared



\## Riesgos de exponer un servidor con tunel publico



\*\*1. Superficie de exposicion\*\*

Al activar el tunel, el servidor queda expuesto a internet completo.

Cualquier persona en el mundo puede acceder al sitio, no solo

los usuarios previstos. Esto aumenta el riesgo de ataques como

fuerza bruta, scraping o exploracion de vulnerabilidades.



\*\*2. Ausencia de autenticacion\*\*

El tunel no tiene ningun mecanismo de autenticacion por defecto.

Cualquiera que tenga la URL puede acceder al contenido sin

identificarse. En un entorno real con datos sensibles esto seria

un problema grave.



\*\*3. Limites del plan gratuito\*\*

El plan gratuito de Cloudflare Tunnel no garantiza uptime,

puede ser desactivado en cualquier momento por Cloudflare,

y la URL cambia cada vez que se reinicia el tunel.



\*\*4. Exposicion mientras esta activo\*\*

El tunel expone el servidor durante todo el tiempo que esta

corriendo. Si se olvida apagarlo, el servidor queda expuesto

indefinidamente.



\## Mitigaciones propuestas



\*\*Mitigacion 1 - Autenticacion basica con Apache\*\*

Agregar autenticacion HTTP basica al sitio para que solo usuarios

con usuario y contrasena puedan acceder. Se configura con htpasswd

y el bloque Directory en Apache igual que hicimos en la practica

de directorios protegidos.



\*\*Mitigacion 2 - Apagar el tunel al terminar\*\*

El tunel solo debe estar activo durante las pruebas. Al terminar

se detiene con Ctrl+C. Nunca dejarlo corriendo sin supervision.



\*\*Mitigacion 3 - Restriccion por IP\*\*

Limitar el acceso solo a IPs conocidas usando la directiva

Require ip en Apache, permitiendo solo rangos de red especificos.

