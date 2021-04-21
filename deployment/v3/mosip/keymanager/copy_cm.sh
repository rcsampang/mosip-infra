#!/bin/sh
# Copy configmaps from other namespaces
# DST_NS: Destination (current) namespace 
COPY_UTIL=../../utils/copy_cm_func.sh
DST_NS=keymanager

$COPY_UTIL global default $DST_NS 
$COPY_UTIL artifactory-share artifactory $DST_NS 
$COPY_UTIL config-server-share config-server $DST_NS
$COPY_UTIL softhsm-kernel-share softhsm $DST_NS




