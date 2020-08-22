FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y python3-dev python3-pip sqlite \
    && pip3 install mlflow[extras]==1.10.0

CMD ["mlflow", "server", "--help"]
