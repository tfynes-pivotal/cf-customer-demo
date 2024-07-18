#!/bin/bash
curl -X POST -H 'Content-Type: application/json' https://cp.homelab.fynesy.com/api/customer-profiles -d '{"firstName": "Joe", "lastName": "Doe", "email": "joe.doe@test.org"}'