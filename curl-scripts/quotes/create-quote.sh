#!/bin/bash

curl "http://localhost:4741/quotes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "quote": {
      "text": "'"${TEXT}"'",
      "cite": "'"${CITE}"'"
    }
  }'

echo
