#set page(margin: (x: 1.4cm, y: 1.3cm))
#set text(font: ("Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.65em)

#show heading.where(level: 2): it => grid(
  columns: (15%, 1fr),
  box(fill: rgb("#0ea5e9"), inset: (x: 0.3em, y: 0.18em), text(white, weight: "bold", "SECTION")),
  [
    #text(fill: rgb("#0c4a6e"), weight: "bold", it.body)
    #line(length: 100%, stroke: 0.7pt + rgb("#0ea5e9"))
  ],
)

#align(center)[
  #text(2em, weight: "bold", fill: rgb("#0c4a6e"))[林明轩]
  #linebreak()
  liming\@example.com · 133-3333-3333 · Shanghai
]

== 个人简介
偏平台化的后端工程师，关注规范、效率与协作。

== 工作经历
某云平台公司 后端工程师（2022 - 至今）

== 项目经历
- 配置中心
- 任务编排平台
- 审计追踪系统

== 技能
Go / TypeScript / Kubernetes / PostgreSQL / Redis
