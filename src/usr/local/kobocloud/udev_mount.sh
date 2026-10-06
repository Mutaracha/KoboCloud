#!/bin/sh
#load config
. $(dirname $0)/config.sh

#create work dirs
[ ! -e "$Logs" ] && mkdir -p "$Logs" >/dev/null 2>&1
[ ! -e "$Lib" ] && mkdir -p "$Lib" >/dev/null 2>&1

if [ ! -e $UserConfig ]; then
  if [ -e $ConfigFile ]; then
    cp $ConfigFile $UserConfig
  else
    echo "# Add your URLs to this file" > $UserConfig
    echo "# Remove the # from the following line to uninstall KoboCloud" >> $UserConfig
    echo "#UNINSTALL" >> $UserConfig
    echo "# Remove the # from the following line to have less curl verbose in log" >> $UserConfig
    echo "#NO_CURL_VERBOSE" >> $UserConfig
  fi
fi
