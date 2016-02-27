curl --include --request PATCH http://localhost:3000/reviews/3 \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "review" : {
    "comment" : "good, but not great",
     "rating" : "3"
    }
  }'
