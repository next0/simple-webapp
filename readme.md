# Simple Web Application

run build container `docker build -t next0/simple-webapp .`

run docker container `docker run --name webapp -d -p 80:9000 next0/simple-webapp`

show docker container logs `docker logs webapp`

run container terminal `docker exec -it webapp /bin/bash`

run tests into separate container `docker run --rm next0/simple-webapp npm test`
