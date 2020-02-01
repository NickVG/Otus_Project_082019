FROM ubuntu:16.04

RUN apt-get clean && apt-get update && apt update
RUN apt-get install -y python3 python-pip git python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/express42/search_engine_ui.git

WORKDIR /search_engine_ui
RUN pip install --no-cache-dir -r requirements.txt
COPY start.sh /start.sh

EXPOSE 80 8000

RUN chmod 0777 /start.sh
CMD ["/start.sh"]

