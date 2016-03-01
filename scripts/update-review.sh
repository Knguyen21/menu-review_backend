curl --include --request PATCH http://localhost:3000/reviews/5 \
  --header "Authorization: Token token=12fc604805f8f292398f43450b3804e1" \
  --header "Content-Type: application/json" \
  --data '{
    "review" : {
    "comment" : "Better the second time around",
     "rating" : "5"
    }
  }'
