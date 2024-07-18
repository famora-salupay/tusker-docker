FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app

RUN set -e && \
    apt-get update && \
    apt-get -y install --no-install-recommends \
        python3 python3-pip python3-dev libpq-dev build-essential && \
    pip install tusker && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    tusker --help

CMD ["tusker", "--help"]