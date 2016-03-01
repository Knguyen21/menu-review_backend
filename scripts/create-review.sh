curl --include --request POST http://localhost:3000/reviews \
  --header "Authorization: Token token=991e526614170c775cdc4e564317cb00" \
  --header "Content-Type: application/json" \
  --data '{
    "review" : {
    "comment" : "OKay when I am hungry",
     "rating" : "3",
     "meal_id" : "2"
    }
  }'
