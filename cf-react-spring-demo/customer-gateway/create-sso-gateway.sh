#!/bin/bash
#cf create-service p.gateway standard cgsecure -c '{ "host":"cgsecure","sso":{"plan":"internal"} }'


cf create-service p.gateway standard cgsecure -c '{ "host":"cgsecure","sso":{"plan":"internal","scopes":["openid","group1","group2"]} }'