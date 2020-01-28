FROM ubuntu:16.04

ENV MONGO 127.0.0.1
ENV MONGO_PORT 27017

RUN apt-get update
RUN apt-get install -y python-pip git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

RUN git clone https://github.com/express42/search_engine_crawler.git


COPY start.sh /start.sh

WORKDIR search_engine_crawler
RUN pip install -r requirements.txt
RUN cd /search_engine_ui && pip install --no-cache-dir -r requirements.txt

EXPOSE 80 8000

RUN chmod 0777 /start.sh
CMD ["/start.sh"]

