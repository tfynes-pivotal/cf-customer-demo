#!/bin/bash
cf bind-service cfe cg -c '{"routes": [ {"path":"/**", "order":10,"filters":["StripPrefix=0"]}   ]}'
cf bind-service cp cg -c '{ "routes": [ {"path":"/api/**","order":0,"filters":["StripPrefix=0"]}   ]}'

