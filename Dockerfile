FROM teddysun/xray:1.8.7

ENV XRAY_CONF_DIR=/etc/xray \
    TARGET_HOST=77.73.238.41

COPY config.template.json ${XRAY_CONF_DIR}/
COPY docker-entrypoint.sh /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

EXPOSE 443
ENTRYPOINT ["/usr/local/bin/entrypoint"]
