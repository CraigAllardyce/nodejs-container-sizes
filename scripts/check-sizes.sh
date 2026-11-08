#!/usr/bin/env bash
set -euo pipefail

for dockerfile in dockerfiles/*; do
   name="${dockerfile##dockerfiles/}"
   bytes=$(docker inspect -f "{{ .Size }}" "$name")
   awk -v n="$name" -v b="$bytes" 'BEGIN { printf "%-22s %12s %8.1f MB\n", n, b, b / 1000000 }'
done
