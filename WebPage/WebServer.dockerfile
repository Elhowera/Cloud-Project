FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]







# docker build -t webpageapp -f WebServer.dockerfile .
# docker run -p 5000:5000 webpageapp
#docker exec -it webpage-webpageapp-1 bash
#cd /path/to/your/app
#ls -l
# nano CloudDatabase.js
#docker exec -it webpage-webpageapp-1 /bin/sh
# then inside the container, run:
#apt-get update && apt-get install -y iputils-ping
# After installation, you can use ping:
#ping webpage-myxampp-1
#docker exec -it webpage-myxampp-1 /opt/lampp/bin/mysql -u root -p
#GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '4524' WITH GRANT OPTION;
#FLUSH PRIVILEGES;
#docker restart webpage-webpageapp-1

