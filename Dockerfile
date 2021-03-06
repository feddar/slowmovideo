FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Europe/Rome \
    QT_GRAPHICSSYSTEM="native"

RUN echo $TZ > /etc/timezone && \
    apt-get update && apt -y dist-upgrade && \
    apt-get --no-install-recommends install -y slowmovideo \ 
    ffmpeg libavcodec-extra libavdevice58 libavfilter-extra libavformat58 && \
    apt-get -y autoremove --purge && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 

COPY start.sh /
RUN chmod +x start.sh

CMD ["/bin/sh", "/start.sh"]
