#set page(margin: (x: 1.25cm, y: 1.2cm))
#set text(font: ("Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.65em)

#let card(title, body) = box(
  stroke: 0.8pt + rgb("#f59e0b"),
  radius: 0.18em,
  inset: 0.45em,
  [
    #text(fill: rgb("#92400e"), weight: "bold", title)
    #v(0.2em)
    #body
  ],
)

#align(center)[
  #text(2em, weight: "bold", fill: rgb("#b45309"))[林明轩]
  #linebreak()
  liming\@example.com · 133-3333-3333 · 上海
]

#v(0.55em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.6em,
  row-gutter: 0.6em,
  #card("个人简介", [平台后端工程师，偏好高可用与高可维护设计。]),
  #card("技能", [Go / TypeScript / Kubernetes / PostgreSQL]),
  #card("经历", [某云平台公司 后端工程师（2022-至今）]),
  #card("项目", [统一配置中心、任务编排平台、监控告警平台]),
)
