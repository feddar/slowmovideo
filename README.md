# slowmovideo
slowmoVideo is an OpenSource program that creates slow-motion videos from your footage (from http://slowmovideo.granjow.net).  
For license see https://github.com/slowmoVideo/slowmoVideo

## How to run
```
USER=your-preferred-username

xhost +

sudo docker run -ti \
    --rm \
    --device /dev/dri:/dev/dri \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --workdir /home/${USER} \
    -e DISPLAY=$DISPLAY \
    -e HOME=/home/${USER} \
    -e USER=${USER} \
    -e USERID=1000 \
    neomediatech/slowmovideo:19.04
```

### Notes
From https://github.com/slowmoVideo/slowmoVideo/wiki/Download : The GPU flow program (optional) is called flowBuilder and usually produces evidently better results. Is not yet available for Windows nor recent Linux.
