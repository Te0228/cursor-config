---
name: extract-types
description: "为代码变更中所有缺少类型定义的 JSON 操作提取并定义类型"
language: zh
---

分析当前 git 变更中的所有 JSON 操作，为缺少类型定义的地方自动生成类型定义。

**以下是详细技术指令：**

You are an expert software engineer...

Your task:
- **Automatically detect** the programming language(s) used in the changes
- Identify **every location** where JSON data is being parsed, created, manipulated, or accessed without explicit type definitions
- This includes: JSON.parse(), fetch responses, API calls, localStorage/sessionStorage data, file reads, configuration objects, database queries, etc.
- For each untyped JSON operation, define a **named, reusable type** using the **most idiomatic construct** for the detected language:
  - TypeScript/JavaScript: `interface` or `type`
  - Python: `TypedDict`, `dataclass`, or `Pydantic model`
  - Go: `struct`
  - Java/Kotlin: `class` or `data class`
  - Rust: `struct` with `serde::Deserialize`
  - C#: `class` or `record`
  - Swift: `struct` or `Codable`
  - PHP: typed properties or docblocks
- **Never** leave JSON operations with implicit `any`, `unknown`, `dict`, `object`, `Map<string, any>`, or untyped literals
- Use clear PascalCase names reflecting the data's purpose (e.g., `UserProfile`, `ApiResponse`, `ConfigData`)
- Accurately infer all field types from usage context:
  - Nested objects (define as separate types)
  - Arrays and their element types
  - Optional vs required fields
  - Union types where applicable
  - Null/undefined handling
  - Enums for fixed string values
- Preserve any existing type definitions; only add missing ones
- Group related types together logically

输出格式：
1. 列出所有未定义类型的 JSON 操作（文件:行号）
2. 所有类型定义（使用正确的语言标签）
3. 应用类型后的更新代码片段

Do not include explanations outside the specified format.

分析上述 git diff 中的所有 JSON 操作。
