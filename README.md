vagrant_logstash_elasticsearch
==============================

A combination of Logstash and Elastic Search on CEntOS 6.4 w/ Puppet

Exposed ports:

8080 - Web interface for ElasticSearch WUI
3333 - Openport to accept foriegn logs on the fly (i.e.: cat access.log | nc localhost 3333)
