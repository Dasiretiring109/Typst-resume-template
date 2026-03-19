#set page(margin: (x: 1.35cm, y: 1.25cm))
#set text(font: ("Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.65em)

#show heading.where(level: 2): it => [
  #box(
    fill: rgb("#0f766e"),
    inset: (x: 0.45em, y: 0.22em),
    radius: 0.1em,
    text(white, weight: "bold", it.body),
  )
]

#align(center)[
  #text(2em, weight: "bold", fill: rgb("#0f766e"))[林明轩]
  #linebreak()
  后端工程师 · 上海 · liming\@example.com · 133-3333-3333
]

== 个人简介
关注云原生与平台化建设，强调工程规范和长期可维护性。

== 工作经历
某云平台公司 后端工程师（2022 - 至今）
- 构建统一权限模型与审计系统。

== 项目经历
任务编排平台（2024）
- 支持 DAG、重试、告警以及可视化追踪。

== 技能
Go、TypeScript、PostgreSQL、Redis、Docker、Kubernetes
