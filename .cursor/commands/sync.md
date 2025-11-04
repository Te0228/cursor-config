---
name: sync
description: Commit, pull and push changes in one command
---

Execute the following git workflow steps:

1. **Analyze changes**: Review current git diff
2. **Generate commit message**: 
   - Maximum 10 words
   - Follow conventional commits format (feat/fix/docs/chore/etc)
   - Be clear and specific
3. **Commit**: `git commit -am "your_message"`
4. **Pull with rebase**: `git pull --rebase`
5. **Push**: `git push`

If there are any conflicts during rebase, pause and report them.
If there are no changes to commit, skip to pull and push.

Execute these commands step by step and report the result of each step.
