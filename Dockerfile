FROM httpd:2.4
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./public-html/ /usr/local/apache2/htdocs/
RUN mkdir -p /usr/local/apache2/logs
RUN chmod a+rwx /usr/local/apache2/logs
EXPOSE 8080
