##Build Docekr Image
FROM ubuntu
RUN apt update
RUN apt install -y apache2
RUN apt install -y apache2-utils
RUN apt clean
RUN apt install -y php libapache2-mod-php php-mysql
RUN git clone https://github.com/MrRowey/Roweys-FAF-Development-site.git
COPY src/ src
WORKDIR /var/www/html
EXPOSE 80
