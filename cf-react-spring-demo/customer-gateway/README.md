## Deploy spring cloud gateway

```
cf create-service p.gateway standard cg -c '{"host":"cg"}'
cf bind-service cfe cg -c '{"routes": [ {"path":"/**", "filters":["StripPrefix=0"]}   ]}'
cf bind-service cp cg -c '{ "routes": [ {"path":"/api/**"}   ]}'  
```