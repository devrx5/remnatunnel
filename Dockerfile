FROM teddysun/xray:1.8.7

RUN apt-get update && \
    apt-get install -y --no-install-recommends gettext-base && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV XRAY_CONF_DIR=/etc/xray \
    TARGET_HOST=example.com

COPY config.template.json ${XRAY_CONF_DIR}/
COPY docker-entrypoint.sh /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

EXPOSE 443
ENTRYPOINT ["/usr/local/bin/entrypoint"]
