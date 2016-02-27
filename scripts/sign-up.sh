#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "matt@me.com",
      "password": "abc",
      "password_confirmation": "abc"
    }
  }'

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "matt@me.com",
      "password": "abc",
      "password_confirmation": "abc"
    }
  }'
