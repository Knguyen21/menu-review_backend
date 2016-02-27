curl --include --request PATCH http://localhost:3000/reviews/8 \
  --header "Authorization: Token token=94b49d60f7f4c469fbe8b44db096e136" \
  --header "Content-Type: application/json" \
  --data '{
    "review" : {
    "comment" : "Better the second time around",
     "rating" : "5"
    }
  }'
