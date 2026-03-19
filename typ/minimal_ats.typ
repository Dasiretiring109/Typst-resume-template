#set page(margin: (x: 1.8cm, y: 1.6cm))
#set text(font: ("Noto Sans CJK SC", "DejaVu Sans"), size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.64em)

#show heading.where(level: 2): it => [
  #text(weight: "bold", it.body)
  #line(length: 100%, stroke: 0.8pt)
]

#align(center)[
  #text(1.9em, weight: "bold")[林明轩]
  #linebreak()
  后端工程师 · 上海 · liming\@example.com · 133-3333-3333
]

== 个人简介
专注后端服务与平台工程，具备从需求分析到上线运维的完整交付经验。

== 工作经历
*某 SaaS 公司* · 后端工程师 · 2022 - 至今
- 负责多租户权限中心开发与性能优化。

== 项目经历
*任务编排平台* · 2024
- 提供 DAG 编排、重试与告警能力。

== 教育背景
同济大学 · 软件工程本科 · 2018 - 2022

== 技能
Go / Rust / TypeScript / PostgreSQL / Docker / Kubernetes
