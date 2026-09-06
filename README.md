# Parcial Servicios Telematicos

## Emmanuel Solarte - Ingenieria Informatica UAO

## Fecha: 8 de septiembre de 2026

## Descripcion

Microproyecto integrador: DNS tolerante a fallos, optimizacion de trafico web y publicacion segura.

## Infraestructura

- VM1 Maestro: 192.168.50.10
- VM2 Esclavo: 192.168.50.20
- VM3 Cliente: 192.168.50.30
- Dominio: empresa.local

## Estructura del repositorio

### parte1 - DNS Maestro/Esclavo con TSIG

- maestro/named.conf.options: configuracion global del maestro
- maestro/named.conf.local: zonas del maestro
- maestro/db.empresa.local: zona directa
- maestro/db.192.168.50: zona inversa
- maestro/tsig-esclavo.key: clave TSIG para transferencia segura
- esclavo/named.conf.options: configuracion global del esclavo
- esclavo/named.conf.local: zonas del esclavo

### parte2 - Compresion Apache mod_deflate y mod_brotli

- parcial.conf: virtual host con compresion habilitada
- mediciones.sh: script de medicion de compresion
- tabla_comparativa.md: resultados de compresion por tipo de archivo
- sitio/index.html: pagina principal del sitio de prueba

### parte3 - Tunel seguro con cloudflared

- pagina_personalizada.html: pagina accesible desde internet
- analisis_seguridad.md: riesgos y mitigaciones del tunel publico

## Tecnologias usadas

- BIND9: servidor DNS
- Apache2: servidor web
- mod_deflate: compresion gzip
- mod_brotli: compresion brotli
- cloudflared: tunel seguro hacia internet
- Vagrant + VirtualBox: virtualizacion
