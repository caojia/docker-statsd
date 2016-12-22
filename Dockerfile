FROM node

RUN git clone git://github.com/etsy/statsd.git /usr/local/src/statsd

ADD ./config.js /etc/default/statsd.js

ENV GRAPHITE_GLOBAL_PREFIX statsd
ENV GRAPHITE_LEGACY_NAMESPACE true

ENV GRAPHITE_PORT_2003_TCP_PORT 2003
ENV GRAPHITE_PORT_2003_TCP_ADDR g1-ana-tr-v02.dns.guazi.com

ENV STATSD_PORT 8125
ENV STATSD_DUMP_MSG false
ENV STATSD_DEBUG false
ENV STATSD_FLUSH_INTERVAL 10000

EXPOSE 8125/udp
EXPOSE 8126/tcp

CMD node /usr/local/src/statsd/stats.js /etc/default/statsd.js
