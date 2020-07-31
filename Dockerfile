# Download base image centos
FROM centos

# Install Apache from Software repository
RUN yum install httpd -y

#Add website to apache
RUN echo "<h1>The Web Server is Running</h1>" > /var/www/html/index.html

EXPOSE 80 443

# Start the service
CMD mkdir /run/httpd ; /usr/sbin/httpd -D FOREGROUND
