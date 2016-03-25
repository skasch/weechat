# weechat
Docker for weechat server. Based on ```32bit/ubuntu:14.04```.

## Build
To build the image: ```sudo docker build -t weechat .```

## Run
To run a container with this image: ```sudo docker run --name weechat -t -p 6667:7667 -p 6697:7697 -v $(pwd)/.weechat:/home/skasch/.weechat -i weechat```

## TLS on relay
To use weeChat as a relay client with TLS connection, please follow [these instructions](https://4z2.de/2014/07/06/weechat-trusted-relay) to generate the ```relay.pem``` certificate. You will need a ```relay.pem``` file in ```.weechat/ssl/``` and a ```relay.conf``` file in ```.weechat/```.