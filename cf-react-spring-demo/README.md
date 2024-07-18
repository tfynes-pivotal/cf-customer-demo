## tPCF ReactJs -> SpringCloudGateway -> SpringBoot -> Postgres Demo




### Setup


## Create Database
```
cf create-service postgres pg-plan1 customer-database
```
## Deploy Rest Service
```
cd customer-profile
cf push 
```
Initialize service with some data
```
curl https://cp.homelab.fynesy.com/api/customer-profiles -X POST -d '{"firstName":"Mark","lastName":"Fynes","email":"mark@test.com"}' -H "Content-Type: application/json"
```

## Deploy React FrontEnd
```
cd customer-frontend
npm install
npm install axios
npm run build
cf push

## Deploy API-Gateway


```
cd customer-frontend
npm install
npm install axios
npm run build
npm install -g serve
```

