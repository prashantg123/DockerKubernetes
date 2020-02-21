FROM node:latest

ENV DB_HOST=nwdb DB_PORT=3306 DB_USER=root DB_PASSWORD=changeit
ENV APP_PORT=3000 APP_ROOT=/app

WORKDIR ${APP_ROOT}}

ADD main.js .
ADD package.json .
ADD package-lock.json .
ADD config config
ADD public public
ADD views views

RUN npm install 

# healtcheck
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD curl -s -f http://localhost:${APP_PORT}/health || exit 1

EXPOSE ${APP_PORT}

ENTRYPOINT [ "node", "main.js" ]