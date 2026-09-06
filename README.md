\# Parcial Servicios Telemáticos

\## Emmanuel Solarte — Ingeniería Informática UAO

\## Fecha: 8 de septiembre de 2026



\## Descripción

Microproyecto integrador: DNS tolerante a fallos, optimización de tráfico web y publicación segura.



\## Estructura

\- \*\*parte1/\*\*: Configuración DNS Maestro/Esclavo con TSIG

&#x20; - maestro/: named.conf.options, named.conf.local, db.empresa.local, db.192.168.50, tsig-esclavo.key

&#x20; - esclavo/: named.conf.options, named.conf.local

\- \*\*parte2/\*\*: Configuración Apache con mod\_deflate y mod\_brotli

&#x20; - parcial.conf: Virtual host con compresión

&#x20; - mediciones.sh: Script de medición

&#x20; - tabla\_comparativa.md: Resultados de compresión

&#x20; - sitio/: Archivos del sitio de prueba

\- \*\*parte3/\*\*: Túnel seguro con cloudflared

&#x20; - pagina\_personalizada.html: Página accesible desde internet



\## Infraestructura

\- VM1 Maestro: 192.168.50.10

\- VM2 Esclavo: 192.168.50.20

\- VM3 Cliente: 192.168.50.30

\- Dominio: empresa.local

