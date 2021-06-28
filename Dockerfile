#Docker file
#When create a container install node
FROM node:14

#Ejcuete linux command
#-p SI no existe crea las carpeeas
RUN mkdir -p /usr/src/app

#Move workspace (this folder)
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

#src files (my app)
COPY . .

#Port for expose
EXPOSE 3000

CMD [ "npm", "run", "dev" ]
