#!/bin/bash
cf bind-service cfe cgsecure -c '{ "routes": [ {"path":"/**",    "order":10,"filters":["StripPrefix=0","SsoLogin","Scopes=group1"]}   ]}'
cf bind-service cp  cgsecure -c '{ "routes": [ {"path":"/api/**","order":0, "filters":["StripPrefix=0","SsoLogin","Scopes=group1"]}   ]}'

