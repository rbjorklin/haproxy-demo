Demo of bounded-load consistent hashing with HAproxy
====================================================

This repo is a demo of `bounded-load consistent hashing`_ with haproxy 
that uses consul & consul-template to find backend services and update the haproxy configuration.

See the bundled ``setup.sh`` for setting up the Vagrant environment.

A simple test case of the consistent hashing is provided with ``make-loadbalanced-requests.sh`` 
which makes a series of requests towards the two HAproxy instances.
Check the output of the two nginx containers to see that the requests were routed correctly with ``journalctl -ef -u nginx`` on node01 or node02.

.. _bounded-load consistent hashing: https://medium.com/vimeo-engineering-blog/improving-load-balancing-with-a-new-consistent-hashing-algorithm-9f1bd75709ed
