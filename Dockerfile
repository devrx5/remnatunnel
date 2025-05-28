FROM teddysun/xray:1.8.7
RUN apk add --no-cache gettext

ENV XRAY_CONF_DIR=/etc/xray \
    TARGET_HOST=example.com \
    TARGET_PORT=443

COPY config.template.json ${XRAY_CONF_DIR}/
COPY docker-entrypoint.sh /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

EXPOSE 443
ENTRYPOINT ["/usr/local/bin/entrypoint"]
