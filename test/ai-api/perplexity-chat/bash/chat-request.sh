#!/bin/bash

# Load API key from .env file
source .env

curl --request POST \
     --url https://api.perplexity.ai/chat/completions \
     --header 'accept: application/json' \
     --header "authorization: Bearer $API_KEY" \
     --header 'content-type: application/json' \
     --data '
{
  "model": "mistral-7b-instruct",
  "messages": [
    {
      "role": "user",
      "content": "how to do an api call"
    }
  ],
  "max_tokens": 1,
  "temperature": 0.2,
  "top_p": 0.9,
  "top_k": 0,
  "stream": false,
  "presence_penalty": 0,
  "frequency_penalty": 1
}
'