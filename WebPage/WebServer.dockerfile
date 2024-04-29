FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install mysql

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]

# docker build -t webpageapp -f WebServer.dockerfile .
# docker run -p 5000:5000 webpageapp
# docker run -d --network mynetwork --name webpageapp -p 5000:5000 webpageapp
# docker run -d --network mynetwork --name myxampp -p 3306:3306 -p 80:80 -p 443:443 -v /E/XAMPP/mysql/data:/opt/lampp/var/mysql -v "E:\College\Semester II Year II\Cloud Computing\Project\Cloud-Project\WebPage:/mnt/data" xampp-mysql
#docker run --name=webpageapp --link=myxampp:localhost -p 5000:5000 -d webpageapp 
# docker cp mysql-apt-config_0.8.29-1_all.deb webpageapp:/tmp/mysql-apt-config_0.8.29-1_all.deb
# docker exec -it webpageapp apt-get update
# docker exec -it webpageapp apt-get install -y lsb-release
# docker exec -it webpageapp dpkg -i /tmp/mysql-apt-config_0.8.29-1_all.deb
# 2 then 1 then 4
# docker exec -it webpageapp apt-get update
# docker exec -it webpageapp apt-get install -y mysql-client