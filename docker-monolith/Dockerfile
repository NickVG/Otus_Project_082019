FROM ubuntu:16.04

ENV MONGO 127.0.0.1
ENV MONGO_PORT 27017

RUN apt-get update
RUN apt-get install -y mongodb-server python-pip git

RUN git clone git@github.com:express42/search_engine_ui.git

COPY mongod.conf /etc/mongod.conf
COPY start.sh /start.sh

RUN cd /search_engine_ui && pip install --no-cache-dir -r requirements.txt

RUN chmod 0777 /start.sh
CMD ["/start.sh"]

