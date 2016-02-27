curl --include --request POST http://localhost:3000/reviews \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "kay@me.com",
      "password": "abc"
    }
  }'
