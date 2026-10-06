#!/bin/sh
Logs=/mnt/onboard/.adds/kobocloud
Lib=/mnt/onboard/Library
UserConfig=/mnt/onboard/.adds/kobocloud/kobocloudrc
Dt="date +%Y-%m-%d_%H:%M:%S"
CURL="$KC_HOME/curl --cacert \"$KC_HOME/ca-bundle.crt\" "
PLATFORM=Kobo
