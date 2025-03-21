yum install docker -y
systemctl start docker
systemctl enable docker
systemctl status docker
docker ps
yum install httpd -y
systemctl start httpd
systemctl enable httpd
systemctl status httpd
docker images
docker pull httpd
docker pull nginx
docker pull caddy
docker pull ubuntu
docker images
docker run -dt --name=con1 -t -p 81:80 httpd
docker exec -it con1 /bin/bash
--default path {/usr/local/apache2/htdocs}
docker ps
docker ps -a
docker run -dt --name=con2 -t -p 82:80 nginx
docker exec -it con2 /bin/bash
--default path {/usr/share/nginx/html}
docker ps
docker run -dt --name=con3 -t -p 83:80 caddy
docker exec -it con3 /bin/sh
--default path {/usr/shar/caddy}
docker ps 
rc-service caddy status
docker exec -it c3 /bin/sh

docker ps
docker ps -a
docker stop $(docker ps -aq)
docker kill $(docker ps -aq)
docker rm -f $(docker ps -aq)

