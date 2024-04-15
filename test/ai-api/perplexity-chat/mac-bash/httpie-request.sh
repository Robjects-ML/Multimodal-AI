# Define the secret variable in HTTPie's environment
# Let's assume the environment is named '.env' and the secret variable is named 'API_KEY'
source .env

# Use the secret variable in the API request
echo '{"model":"mistral-7b-instruct","messages":[{"role":"user","content":"what can you do for me?"}]}' | \
http POST https://api.perplexity.ai/chat/completions \
accept:application/json \
authorization:"Bearer $API_KEY" \
content-type:application/json