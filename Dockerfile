FROM nginx:1.17.8-alpine

COPY default.conf /etc/nginx/conf.d/default.conf
COPY module.conf /etc/nginx/module.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY run.sh /bin/

CMD ["sh", "/bin/run.sh"]