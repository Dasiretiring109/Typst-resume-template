#set page(margin: (x: 1.5cm, y: 1.35cm))
#set text(font: ("Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.65em)

#let idx = counter("sec-idx")
#show heading.where(level: 2): it => {
  idx.step()
  [
    #text(fill: rgb("#1e3a8a"), weight: "bold", [[#idx.display()] #it.body])
    #line(length: 100%, stroke: 0.7pt + rgb("#1e3a8a"))
  ]
}

#align(center)[
  #text(2em, weight: "bold", fill: rgb("#1e3a8a"))[林明轩]
  #linebreak()
  liming\@example.com · 133-3333-3333 · 上海
]

== 个人简介
平台型后端工程师，擅长从 0 到 1 搭建基础能力。

== 工作经历
某 SaaS 公司 后端工程师（2022 - 至今）
- 负责权限、配置中心和审计链路。

== 项目经历
统一配置中心（2024）
- 支持灰度发布、版本追踪、回滚。

== 技能
Go / TypeScript / Redis / PostgreSQL / K8s
