FROM node:13.6.0-slim

EXPOSE 8080

WORKDIR /www

COPY ./docker-command.sh /www_tools/docker-command.sh

RUN ["chmod", "+x", "/www_tools/docker-command.sh"]

CMD /www_tools/docker-command.sh