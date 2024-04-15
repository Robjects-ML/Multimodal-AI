To utilize a secret variable in a `curl` request, you would first need to set an environment variable in your bash session, and then modify the `curl` command to use that variable. Here's how you can do it:

1. **Set the Environment Variable:**
   Open your terminal and set the environment variable for your secret, such as an API key. You can do this using the `export` command. Make sure to replace `YOUR_SECRET_KEY` with your actual secret key.

```bash
export API_KEY=YOUR_SECRET_KEY
```

2. **Modify the `curl` Command:**
   Modify your `curl` command to use the environment variable by replacing the actual key with the variable name prefixed with a dollar sign (`$`). Here's the modified `curl` command:

```bash
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
      "role": "system",
      "content": "Be precise and concise."
    },
    {
      "role": "user",
      "content": "How many stars are there in our galaxy?"
    }
  ]
}
'
```

In the modified command, the `authorization` header now includes the `API_KEY` environment variable instead of the actual key. When you run this command, the shell will replace `$API_KEY` with the value of the environment variable that you exported earlier.

Please note that environment variables are session-specific. If you open a new terminal session, you'll need to export the variable again, unless you add the export command to your `.bashrc` or `.bash_profile` to make it persistent across sessions.