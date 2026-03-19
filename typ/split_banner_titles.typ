#set page(margin: (x: 1.3cm, y: 1.2cm))
#set text(font: ("Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.65em)

#show heading.where(level: 2): it => grid(
  columns: (1fr, auto),
  box(fill: rgb("#1d4ed8"), inset: (x: 0.42em, y: 0.2em), text(white, weight: "bold", it.body), width: 1fr),
  box(fill: rgb("#dbeafe"), inset: (x: 0.42em, y: 0.2em), text(fill: rgb("#1d4ed8"), "CV")),
)

#align(center)[
  #text(2em, weight: "bold", fill: rgb("#1d4ed8"))[林明轩]
  #linebreak()
  后端工程师 · liming\@example.com · 133-3333-3333
]

== 个人简介
具备稳定性建设、性能优化和平台能力沉淀经验。

== 工作经历
某 AI 公司 资深工程师（2022 - 至今）

== 项目经历
数据质量守护平台（2024）

== 技能
Go / Rust / TypeScript / PostgreSQL / Redis
