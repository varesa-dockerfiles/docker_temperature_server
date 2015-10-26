FROM oma/nodejs_new

RUN git clone https://github.com/varesa/temperature_server.git
WORKDIR temperature_server
RUN npm install

CMD bin/www

VOLUME /temperature_server/