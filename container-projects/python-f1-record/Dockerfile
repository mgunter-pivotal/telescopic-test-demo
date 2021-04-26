FROM ubuntu:20.04
WORKDIR /sensable
RUN apt-get update \
 && apt-get install -y python3 python3-pip \
 && pip3 install --trusted-host pypi.python.org f1-2020-telemetry 
 #&& import f1_2020_telemetry.packet \
 #&& mkdir sensable/experiments


COPY experiments experiments

COPY . .

ENTRYPOINT ["f1-2020-telemetry-recorder"]
