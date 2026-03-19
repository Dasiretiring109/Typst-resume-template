#set page(margin: (x: 1.5cm, y: 1.45cm))
#set text(font: ("Source Sans 3", "Source Sans Pro", "Noto Sans CJK SC", "DejaVu Sans"), size: 10.2pt, lang: "zh")
#set par(justify: true, leading: 0.65em)

#let brand = rgb("#0f3f72")
#let soft = rgb("#e7eff8")

#let chip(content) = box(
  fill: soft,
  radius: 0.22em,
  inset: (x: 0.42em, y: 0.18em),
  text(fill: brand, content),
)

#let section(title) = [
  #v(0.55em)
  #grid(
    columns: (2pt, 1fr),
    column-gutter: 0.38em,
    rect(width: 2pt, height: 1.05em, fill: brand),
    text(weight: "bold", fill: brand, upper(title)),
  )
  #v(0.15em)
]

#grid(
  columns: (1fr, auto),
  [
    #text(2em, weight: "bold")[顾言]
    #linebreak()
    #text(fill: rgb("#475569"))[Senior Software Engineer]
    #linebreak()
    guyan\@example.com · +86 131-9999-2222 · github.com/guyan
  ],
  box(
    stroke: 0.8pt + rgb("#cbd5e1"),
    radius: 50%,
    width: 2.8cm,
    height: 2.8cm,
    align(center + horizon, text(fill: rgb("#64748b"), "PHOTO")),
  ),
)

#section("Professional Experience")
*某 SaaS 公司* · Staff Engineer #h(1fr) 2022.06 -- 至今
- 负责多租户权限中心与审计追踪链路。
- 协调 3 个团队完成统一认证升级，迁移过程零停机。

#section("Projects")
*Data Quality Guard* #h(1fr) 2024
- 实现规则编排和自动修复建议。
- 将数据异常发现时延从小时级压缩到分钟级。

#section("Skills")
#chip("Go") #h(0.25em) #chip("TypeScript") #h(0.25em) #chip("PostgreSQL") #h(0.25em) #chip("Kubernetes") #h(0.25em) #chip("Redis")

#section("Education")
*华东师范大学* · 软件工程（硕士） #h(1fr) 2019 -- 2022
