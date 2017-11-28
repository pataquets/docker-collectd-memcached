FROM pataquets/collectd

COPY *.conf /etc/collectd/conf-available/

RUN \
  ln -vs /etc/collectd/conf-available/read-memcached.conf \
    /etc/collectd/conf.d/ \
  && \
  nl \
    /etc/collectd/collectd.conf \
    /etc/collectd/conf.d/*
