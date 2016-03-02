curl --include --request POST http://localhost:3000/reviews \
  --header "Authorization: Token token=17f2db1ab4efd6bdab62ad7876a46b25" \
  --header "Content-Type: application/json" \
  --data '{
    "review" : {
    "comment" : "OKay when I am hungry",
     "rating" : "3",
     "meal_id" : "2"
    }
  }'
