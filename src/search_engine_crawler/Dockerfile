FROM ubuntu:16.04

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

RUN apt-get clean && apt-get update && apt update
RUN apt-get install -y python3 python-pip git python3-pip python3-coverage\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/NickVG/search_engine_crawler.git

WORKDIR /search_engine_crawler
RUN pip install -r requirements.txt -r requirements-test.txt
RUN python3 -m pip install --no-cache-dir bs4 \
    && python3 -m pip install --no-cache-dir pika \
    && python3 -m pip install --no-cache-dir pymongo \
    && python3 -m pip install --no-cache-dir structlog \
    && python3 -m pip install --no-cache-dir prometheus_client \
    && python3 -m pip install --no-cache-dir requests \
#    && python3 -m pip install \
    && python3 -m pip install --no-cache-dir lru_cache
ENV EXCLUDE_URLS='.*github.com'

CMD ["python3","-u", "crawler/crawler.py", "https://vitkhab.github.io/search_engine_test_site"]

