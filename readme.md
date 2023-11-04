# NodeJS Container Sizes

https://craig.allardyce.me/projects/2023/nodejs-container-sizes

## Usage

`./scripts/build-all.sh` - build all the images
`./scripts/check-sizes.sh` - get the exact size of each image

## Single dockerfile

`docker build -f dockerfiles/node14 -t node14 .`
`docker inspect -f "{{ .Size }}" node14`
