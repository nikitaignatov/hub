FROM nodered/node-red-docker:v8

USER root
RUN apt-get update && apt-get install nano git -y

USER node-red

RUN npm install node-red-dashboard
RUN npm install node-red-contrib-credentials
RUN npm install node-red-contrib-zigbee
#RUN npm install node-red-contrib-openzwave


# db

RUN npm install node-red-contrib-influxdb
#RUN npm install node-red-contrib-graphql
RUN npm install node-red-contrib-mssql-plus

# services

#RUN npm install node-red-contrib-todoist
RUN npm install node-red-contrib-google

# utils

#RUN npm install node-red-contrib-bigtimer
#RUN npm install node-red-contrib-zip
#RUN npm install node-red-contrib-http-logger
RUN npm install node-red-contrib-mqtt-json
RUN npm install node-red-contrib-aggregator
RUN npm install node-red-contrib-moment
RUN npm install node-red-contrib-statistics
RUN npm install node-red-contrib-state-machine

