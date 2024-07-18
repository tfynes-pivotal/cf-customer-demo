#!/bin/bash

# push a jar for an existing running boot app in platform, but via native image builder
# then wire it to same route and existing app
if [ "$#" -ne 3 ];
  then 
     echo "Usage cf-npush.sh <app-name> <ingress-domain> <path-to-jar>"
     exit 1
fi

appname=$1
ingressdomain=$2
pathtojar=$3

cf push "$appname-native" -p "$pathtojar" -b java_native_image_cnb_beta -s tanzu-jammy-full-stack -m 8G --no-start
cf set-env "$appname-native" BP_MAVEN_ACTIVE_PROFILES native
cf set-env "$appname-native" BP_JVM_VERSION 21
cf start "$appname-native"
cf scale "$appname-native" -m 32M -f
cf map-route "$appname-native" "$ingressdomain" --hostname $appname
