

for dockerfile in dockerfiles/*; do
   file="${dockerfile##dockerfiles/}"
   echo $file
   docker build -f $dockerfile -t $file .
done
