# Sensu API
#
# Monitor servers, services, application health, and business KPIs
# This is Sensu API Docker Image

FROM opsta/sensu-base:1.0-xenial-20160923.1
MAINTAINER Jirayut Nimsaeng <jirayut [at] opsta.io>

EXPOSE 4567
CMD ["/opt/sensu/embedded/bin/ruby", "/opt/sensu/bin/sensu-api", \
     "-c", "/etc/sensu/config.json", "-d", "/etc/sensu/conf.d", \
     "-e", "/etc/sensu/extensions"]
