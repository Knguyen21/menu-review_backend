curl --include --request POST http://localhost:3000/reviews \
  --header "Authorization: Token token=94b49d60f7f4c469fbe8b44db096e136" \
  --header "Content-Type: application/json" \
  --data '{
    "review" : {
    "comment" : "OKay when I am hungry",
     "rating" : "3",
     "meal_id" : "2"
    }
  }'
