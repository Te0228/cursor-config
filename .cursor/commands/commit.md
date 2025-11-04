{
  "name": "commit",
  "description": "Commit changes without pushing (max 10 words message)",
  "steps": [
    {
      "type": "chat",
      "prompt": "Generate a commit message (max 10 words) based on current git changes, then execute: git commit -am \"<your_message>\""
    }
  ]
}
