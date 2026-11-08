#!/usr/bin/env bash
set -euo pipefail

for dockerfile in dockerfiles/*; do
   name="${dockerfile##dockerfiles/}"
   echo "$name"
   docker build -f "$dockerfile" -t "$name" .
done
