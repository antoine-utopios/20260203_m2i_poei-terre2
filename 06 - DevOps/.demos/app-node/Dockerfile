FROM node:25.8.0-alpine

# RUN mkdir /script

# COPY ./demo-logging.js /script/app.js

WORKDIR /script

COPY ./*.js .

# CMD [ "node", "app.js" ]
# ENTRYPOINT [ "node", "addition.js" ] => docker run mon-image blabla => node addition.js blabla
ENTRYPOINT [ "node" ]

# CMD [ "node", "addition.js" ] => docker run mon-image blabla => blabla
CMD [ "addition.js" ] 

# ENTRYPOINT [ "node" ]
# CMD [ "addition.js" ] => docker run mon-image blabla => node blabla