#!/bin/bash

sudo docker run -t -i --name=nginx \
	    -v $(pwd)/data:/etc/nginx \
	    -p 80:80 \
	    odroid_u3/nginx /bin/bash
