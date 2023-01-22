for dockerfile in dockerfiles/*; do
   file="${dockerfile##dockerfiles/}"
   echo $file
   docker inspect -f "{{ .Size }}" $file
done
