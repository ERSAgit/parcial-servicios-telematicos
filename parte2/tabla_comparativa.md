\# Tabla Comparativa de Compresión

\## Recurso evaluado: lorem.txt

\## Tamaño original: 620,001 bytes



| Algoritmo / nivel | Tamaño (bytes) | Ratio | Ahorro % | Tiempo (s) |

|---|---|---|---|---|

| Sin comprimir (base) | 620,001 | 1.0 | 0% | 0.120 |

| gzip nivel 1 | 4,395 | 0.007 | 99.3% | 0.031 |

| gzip nivel 6 | 2,238 | 0.004 | 99.6% | 0.026 |

| gzip nivel 9 | 2,238 | 0.004 | 99.6% | 0.026 |

| brotli calidad 5 | 116 | 0.0002 | 99.98% | 0.023 |

| brotli calidad 11 | 113 | 0.0002 | 99.98% | 0.096 |



\## Observaciones

\- gzip nivel 9 no mejora sobre nivel 6: punto de rendimientos decrecientes

\- brotli comprime significativamente mejor que gzip en texto repetitivo

\- brotli calidad 11 es apenas 3 bytes mejor que calidad 5 pero tarda 4x más

\- Archivos binarios (PNG): mismo tamaño con y sin compresión (51,200 bytes)

