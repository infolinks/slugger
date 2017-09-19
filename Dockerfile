FROM alpine:3.6
MAINTAINER Arik Kfir <arik@infolinks.com>
RUN apk --no-cache --update add bash
COPY slug.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/slug.sh
ENTRYPOINT ["/usr/local/bin/slug.sh"]
