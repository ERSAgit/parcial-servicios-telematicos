# Tabla Comparativa de Compresion

## Recurso: lorem.txt - Tamanio original: 620001 bytes

| Algoritmo / nivel | Tamanio (bytes) | Ratio | Ahorro % | Tiempo (s) |
|---|---|---|---|---|
| Sin comprimir (base) | 620001 | 1.000 | 0% | 0.120 |
| gzip nivel 1 | 4395 | 0.007 | 99.3% | 0.031 |
| gzip nivel 6 | 2238 | 0.004 | 99.6% | 0.026 |
| gzip nivel 9 | 2238 | 0.004 | 99.6% | 0.026 |
| brotli calidad 5 | 116 | 0.0002 | 99.98% | 0.023 |
| brotli calidad 11 | 113 | 0.0002 | 99.98% | 0.096 |

## Recurso: index.html - Tamanio original: 282 bytes

| Algoritmo / nivel | Tamanio (bytes) | Ratio | Ahorro % |
|---|---|---|---|
| Sin comprimir (base) | 282 | 1.000 | 0% |
| gzip nivel 6 | 221 | 0.784 | 21.6% |
| brotli calidad 11 | 166 | 0.589 | 41.1% |

## Recurso: estilos.css - Tamanio original: 510 bytes

| Algoritmo / nivel | Tamanio (bytes) | Ratio | Ahorro % |
|---|---|---|---|
| Sin comprimir (base) | 510 | 1.000 | 0% |
| gzip nivel 6 | 284 | 0.557 | 44.3% |
| brotli calidad 11 | 184 | 0.361 | 63.9% |

## Recurso: datos.json - Tamanio original: 710 bytes

| Algoritmo / nivel | Tamanio (bytes) | Ratio | Ahorro % |
|---|---|---|---|
| Sin comprimir (base) | 710 | 1.000 | 0% |
| gzip nivel 6 | 303 | 0.427 | 57.3% |
| brotli calidad 11 | 278 | 0.392 | 60.8% |

## Recurso: app.js - Tamanio original: 389 bytes

| Algoritmo / nivel | Tamanio (bytes) | Ratio | Ahorro % |
|---|---|---|---|
| Sin comprimir (base) | 389 | 1.000 | 0% |
| gzip nivel 6 | 389 | 1.000 | 0% |
| brotli calidad 11 | 389 | 1.000 | 0% |

## Recurso: imagen.png (binario) - Tamanio original: 51200 bytes

| Algoritmo / nivel | Tamanio (bytes) | Ratio | Ahorro % |
|---|---|---|---|
| Sin comprimir (base) | 51200 | 1.000 | 0% |
| gzip nivel 6 | 51200 | 1.000 | 0% |
| brotli calidad 11 | 51200 | 1.000 | 0% |

## Observaciones

- Archivos de texto grandes: brotli supera ampliamente a gzip
- Archivos pequenos como app.js de 389 bytes: la compresion no aplica
- Archivos binarios como PNG: excluidos correctamente, no se comprimen
- gzip nivel 9 no mejora sobre nivel 6: punto de rendimientos decrecientes
- brotli calidad 11 apenas mejora 3 bytes sobre calidad 5 pero usa 4x mas CPU
