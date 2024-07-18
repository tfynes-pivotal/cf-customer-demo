#!/bin/bash
cf create-service postgres pg-plan1 customer-database
../../waitForService.sh customer-database

