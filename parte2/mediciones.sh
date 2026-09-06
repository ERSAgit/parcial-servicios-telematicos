#!/bin/bash
# Script de medición de compresión
# Recurso: lorem.txt (620001 bytes sin comprimir)

echo "=== MEDICIONES DE COMPRESIÓN ==="
echo ""

echo "--- Sin comprimir (baseline) ---"
curl -s -H 'Accept-Encoding: identity' -o /dev/null \
 -w 'Tamaño=%{size_download}B Tiempo=%{time_total}s\n' http://parcial.empresa.local/lorem.txt

echo "--- gzip nivel 1 ---"
curl -s -H 'Accept-Encoding: gzip' -o /dev/null \
 -w 'Tamaño=%{size_download}B Tiempo=%{time_total}s\n' http://parcial.empresa.local/lorem.txt

echo "--- gzip nivel 6 ---"
curl -s -H 'Accept-Encoding: gzip' -o /dev/null \
 -w 'Tamaño=%{size_download}B Tiempo=%{time_total}s\n' http://parcial.empresa.local/lorem.txt

echo "--- gzip nivel 9 ---"
curl -s -H 'Accept-Encoding: gzip' -o /dev/null \
 -w 'Tamaño=%{size_download}B Tiempo=%{time_total}s\n' http://parcial.empresa.local/lorem.txt

echo "--- brotli calidad 5 ---"
curl -s -H 'Accept-Encoding: br' -o /dev/null \
 -w 'Tamaño=%{size_download}B Tiempo=%{time_total}s\n' http://parcial.empresa.local/lorem.txt

echo "--- brotli calidad 11 ---"
curl -s -H 'Accept-Encoding: br' -o /dev/null \
 -w 'Tamaño=%{size_download}B Tiempo=%{time_total}s\n' http://parcial.empresa.local/lorem.txt