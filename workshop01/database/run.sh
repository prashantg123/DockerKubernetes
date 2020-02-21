#!/bin/bash
docker run -d -p 3306:3306 -v /opt/tmp:/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=changeit \
	-e MYSQL_DATABASE=northwind \
	--name mysql mysql@sha256:bf17a7109057494c45fba5aab7fc805ca00ac1eef638dfdd42b38d5a7190c9bb
