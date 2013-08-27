#!/bin/bash

sudo /home/vagrant/redis/src/redis-server &
sudo java -jar /home/vagrant/logstash/logstash-1.1.13-flatjar.jar agent -f /home/vagrant/logstash/indexer.conf -- web --backend 'elasticsearch:///?local' &