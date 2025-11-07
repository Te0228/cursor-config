---
name: commit
description: Smart conventional commit
---

Analyze git changes and generate commit message:

Format: <type>: <description>

Auto-detect type:
- feat: if adding new features/files
- fix: if fixing bugs/errors
- refactor: if restructuring code
- docs: if only docs changed
- chore: if config/dependencies changed

Rules:
- Max 10 words, Chinese description
- Use format: "类型: 动词+宾语"
- Examples:
  - feat: 添加session_id可空配置
  - fix: 修复commit遗漏新文件问题
  - refactor: 优化代码审查prompt

Execute: git add -A && git commit -m "<message>"
