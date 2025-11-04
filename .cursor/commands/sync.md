{
  "name": "sync",
  "description": "Commit, pull and push changes",
  "steps": [
    {
      "type": "chat",
      "prompt": "Execute the following steps:\n1. Generate a commit message (max 10 words) based on git changes\n2. Run: git commit -am \"<message>\"\n3. Run: git pull --rebase\n4. Run: git push"
    }
  ]
}
