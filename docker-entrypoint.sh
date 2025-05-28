#!/bin/sh
#  Вставляем TARGET_HOST и стартуем Xray
envsubst < /etc/xray/config.template.json > /etc/xray/config.json
exec /usr/bin/xray -c /etc/xray/config.json
