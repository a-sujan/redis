FROM redis:7.2.4
RUN mkdir /etc/redis
COPY redis.conf /etc/redis/redis.conf
COPY sentinel.conf /etc/redis/sentinel.conf
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
