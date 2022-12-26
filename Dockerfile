# FROM nginx:1.19.3-alpine
FROM yuchen168/easybot


COPY nginx.conf /etc/nginx/nginx.conf
COPY app.json /etc/EasyBot/app.json


# COPY html.zip /usr/local/html.zip
# WORKDIR /usr/local
# RUN mkdir html
# RUN unzip html.zip -d html


# RUN /usr/bin/EasyBot -config=/etc/EasyBot/app.json &
# RUN /usr/bin/EasyBot -config=/etc/EasyBot/app.json && nginx -g 'daemon off;'

EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
# nginx -g 'daemon off;'

ADD app.sh /
RUN chmod +x /app.sh
CMD /app.sh
