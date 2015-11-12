FROM registry.esav.fi/nodejs_new

ENV USER=temperature_server

RUN useradd $USER
RUN mkdir temperature_server && chown $USER:$USER temperature_server

USER $USER
RUN git clone https://github.com/varesa/temperature_server.git temperature_server
WORKDIR temperature_server

RUN npm install

CMD bin/www

VOLUME /temperature_server/
