FROM ubuntu:20.04
WORKDIR /app

RUN apt-get update \
 && apt-get install -y python3 python3-pip \
 && pip3 install --trusted-host pypi.python.org f1-2020-telemetry



COPY . /app
RUN chmod +x roaddetect.py

ENTRYPOINT ["bash","-c","python3 roaddetect.py"]
