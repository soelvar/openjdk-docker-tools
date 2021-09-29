
docker build --tag soelvar/openjdk11-tools:latest .
docker push soelvar/openjdk11-tools:latest

let $# || { echo no release version supplied - will not create a release; exit 1; }

echo tagging latest with version $1 and releaseing
docker tag soelvar/openjdk11-tools:latest soelvar/openjdk11-tools:$1
docker push soelvar/openjdk11-tools:$1
