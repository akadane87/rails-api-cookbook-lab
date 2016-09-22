
#create
curl --include --request POST http://localhost:3000/ingredients \
  --header "Content-Type: application/json" \
  --data '{
    "ingredient": {
      "name": "pepper",
      "unit": "1 tbs"
    }
  }'
