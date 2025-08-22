#!/usr/bin/env bash
# Script: reporte_archivos.sh
# Objetivo: Generar un listado de archivos modificados en los últimos N días (por defecto 7)
# Uso:
#   ./scripts/reporte_archivos.sh [DIRECTORIO] [DIAS]
# Ejemplos:
#   ./scripts/reporte_archivos.sh              # directorio actual, 7 días
#   ./scripts/reporte_archivos.sh /var/log 2   # /var/log, 2 días

set -euo pipefail  # Manejo estricto de errores

DIRECTORIO="${1:-.}"   # Primer argumento o "." (directorio actual)
DIAS="${2:-7}"         # Segundo argumento o "7" por defecto

# Validar que el directorio existe
if [ ! -d "$DIRECTORIO" ]; then
  echo "ERROR: El directorio '$DIRECTORIO' no existe." >&2
  exit 1
fi

# Validar que DIAS es un número
if ! [[ "$DIAS" =~ ^[0-9]+$ ]]; then
  echo "ERROR: DIAS debe ser un número entero." >&2
  exit 1
fi

# Carpeta de reportes
mkdir -p docs
ARCHIVO_REPORTE="docs/reporte_$(date +%Y%m%d_%H%M%S).txt"

# Generar reporte
{
  echo "Reporte de archivos modificados en los últimos $DIAS días"
  echo "Directorio: $DIRECTORIO"
  echo "Generado: $(date)"
  echo "----------------------------------------------"
  find "$DIRECTORIO" -type f -mtime "-$DIAS" -printf "%TY-%Tm-%Td %TH:%TM  %p\n" | sort
} > "$ARCHIVO_REPORTE"

echo "✅ Reporte generado: $ARCHIVO_REPORTE"
