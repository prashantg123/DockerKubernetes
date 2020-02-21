# what is the base image we are using
FROM node:latest

# define some environment variables
ENV APP_PORT=3000 APP_ROOT=/app 

# create the $APP_ROOT directory
# go inside the directory
WORKDIR ${APP_ROOT}

# Copy my files from notebook 
# into ${APP_DIR}
ADD main.js .
ADD package.json .
ADD package-lock.json .
ADD public public
ADD views views

# install dependencies
# this will use package.json 
RUN npm install 

# configure healthchecks
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD curl -s -f http://localhost:${APP_PORT}/health > /dev/null || exit 1

# what port is the application using
EXPOSE ${APP_PORT}

# how to run the program
ENTRYPOINT [ "node", "main.js" ]