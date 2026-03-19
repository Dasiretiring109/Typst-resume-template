#set page(margin: (x: 1.3cm, y: 1.3cm))
#set text(font: ("Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 10.2pt, lang: "zh")
#set par(justify: true, leading: 0.7em)

#let theme = rgb("#1d4ed8")
#let soft = rgb("#eef2ff")

#let badge(content) = box(
  fill: soft,
  inset: (x: 0.45em, y: 0.2em),
  radius: 0.2em,
  text(theme, content),
)

#let panel(title, body) = block(
  inset: 0.55em,
  radius: 0.25em,
  stroke: 0.7pt + rgb("#cbd5e1"),
  [
    #text(weight: "bold", fill: theme, upper(title))
    #v(0.25em)
    #body
  ],
)

#block(fill: theme, inset: (x: 0.75em, y: 0.65em), radius: 0.35em)[
  #text(white, 1.85em, weight: "bold")[陈雨航]
  #linebreak()
  #text(white, [全栈工程师 · 5 年经验 · 上海])
  #linebreak()
  #text(white, [chenyh\@example.com · 138-8888-6666 · github.com/chenyh])
]

#v(0.6em)
#grid(
  columns: (1.1fr, 1.6fr),
  column-gutter: 0.7em,
  panel("技能", [
    #badge("Go") #h(0.2em) #badge("TypeScript") #h(0.2em) #badge("Rust") #h(0.2em) #badge("Python")
    #v(0.35em)
    #badge("Kubernetes") #h(0.2em) #badge("PostgreSQL") #h(0.2em) #badge("Redis")
  ]),
  panel("个人简介", [
    长期负责中后台与平台化建设，擅长把复杂需求拆成可交付模块，重视代码质量和团队协作效率。
  ]),
)

#v(0.45em)
#panel("项目精选", [
  *统一任务编排平台* #h(1fr) #text(fill: rgb("#64748b"))[2024]
  - 支持 DAG 任务编排、失败重试和 SLA 告警。
  - 调度模块重构后，失败任务恢复效率提升约 52%。

  *简历自动生成服务* #h(1fr) #text(fill: rgb("#64748b"))[2023]
  - 提供模板化渲染能力，支持多语言和多版式输出。
])

#v(0.45em)
#panel("工作经历", [
  *某 AI 创业公司* · 资深工程师 #h(1fr) #text(fill: rgb("#64748b"))[2022 - 至今]
  - 负责知识库系统后端与权限域模型。
  - 推动接口标准化，跨团队联调周期缩短 30%+。
])
