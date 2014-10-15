#!/bin/bash

sudo docker run -t -d --name=nginx -h nginx \
	    -p 80:80 \
	    -v $(pwd)/data:/etc/nginx \
	    odroid_u3/nginx
