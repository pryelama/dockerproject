# getting base image alpine linux
FROM ubuntu
RUN apt-get update && apt-get install nginx -y && mkdir ammulu
#RUN && apt-get install git && apt-get install apache
WORKDIR /ammulu
COPY index.html /var/www/html/
EXPOSE 8081
CMD ["nginx","-g","daemon off;"]
#RUN apk add thttpd
#WORKDIR /sunny
