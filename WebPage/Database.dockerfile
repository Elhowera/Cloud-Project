FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget net-tools
RUN wget https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/8.2.12/xampp-linux-x64-8.2.12-0-installer.run
RUN chmod +x xampp-linux-x64-8.2.12-0-installer.run
RUN ./xampp-linux-x64-8.2.12-0-installer.run

EXPOSE 80 443 3306

COPY students.sql /docker-entrypoint-initdb.d/students.sql

CMD /opt/lampp/lampp start && tail -f /dev/null

#docker build -t xampp-mysql -f Database.dockerfile .
#docker run -d -p 3306:3306 -p 80:80 -p 443:443 -v /E/XAMPP/mysql/data:/opt/lampp/var/mysql -v "E:\College\Semester II Year II\Cloud Computing\Project\Cloud-Project\WebPage:/mnt/data" --name myxampp xampp-mysql
#docker start myxampp
#docker ps -a

#docker cp myxampp:/opt/lampp/etc/extra/httpd-xampp.conf "E:/College/Semester II Year II/Cloud Computing/Project/Cloud-Project/WebPage/httpd-xampp.conf"

# Change the directory to the folowing 
#<Directory "/opt/lampp/phpmyadmin">
#   AllowOverride AuthConfig Limit
#   Order allow,deny
#   Allow from all
#   Require all granted
#</Directory>

#docker cp "E:/College/Semester II Year II/Cloud Computing/Project/Cloud-Project/WebPage/httpd-xampp.conf" myxampp:/opt/lampp/etc/extra/httpd-xampp.conf

#docker exec -it myxampp /opt/lampp/lampp restartapache
