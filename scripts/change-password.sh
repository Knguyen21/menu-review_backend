#!/bin/bash

curl --include --request PATCH http://localhost:3000/change-password/1 \
  --header "Authorization: Token token=4c35ac429924d274781f8c881db1c877" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'
