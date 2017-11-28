FROM pataquets/collectd

COPY *.conf /etc/collectd/conf-available/

RUN \
  cat /etc/collectd/conf-available/read-memcached.conf | tee -a /etc/collectd/collectd.conf && \
  nl /etc/collectd/collectd.conf
