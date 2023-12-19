#!/bin/sh

# cups-filters upgrade to 2.0.0 has been split by upstream into 4 different ports:
# 	cups-filters, libcupsfilters, libppd and cups-browsed.
# To avoid file conflicts remove the old cups-filters first.

zfr isinstalled cups-filters && \

vrs=$(zfr info cups-filters | awk '/Installed/{print $2}')
vr=${vrs%%.*}

if [ $vr = "1" ] ; then
	zfr remove -y cups-filters
fi
