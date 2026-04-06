FROM nginx:apline

COPY app/ /usr/share/nginx/html

EXPOSE 80

