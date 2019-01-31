#!/bin/bash

curl "http://localhost:4741/quotes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "quote": {
      "text": "'"${TEXT}"'",
      "cite": "'"${CITE}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
