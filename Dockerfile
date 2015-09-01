#Base image
FROM resin/raspberrypi2-python

RUN apt-get update && apt-get install -y python-pygame

ENV INITSYSTEM on

ADD /src/ /usr/src/app

CMD ["bash", "/usr/src/app/start.sh"]
