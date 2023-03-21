FROM python:3.11-alpine

LABEL maintainer="Vitalii Bashun <vitaliy.bashun@gmail.com>"
LABEL description="An implementation of a Prometheus exporter for EcoFlow Smart Home Panel"

RUN apk update && apk add py3-pip
ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ADD ecoflow_exporter.py /ecoflow_exporter.py

CMD [ "python", "/ecoflow_exporter.py" ]