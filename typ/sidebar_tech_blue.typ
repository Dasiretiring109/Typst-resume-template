#set page(margin: (x: 1.2cm, y: 1.25cm))
#set text(font: ("Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.66em)

#show heading.where(level: 2): it => [
  #box(fill: rgb("#1d4ed8"), inset: (x: 0.4em, y: 0.2em), radius: 0.15em, text(white, weight: "bold", it.body))
]

#grid(
  columns: (30%, 1fr),
  column-gutter: 0.8em,
  [
    #text(weight: "bold", 1.3em)[林明轩]
    #v(0.25em)
    后端工程师\
    上海
    #v(0.5em)
    电话：133-3333-3333\
    邮箱：liming\@example.com\
    GitHub：github.com/liming
  ],
  [
    == 个人简介
    3 年平台与后端开发经验，关注稳定性与工程效率。

    == 工作经历
    *某云平台公司* · 后端工程师（2022 - 至今）
    - 负责服务治理与可观测性改造。

    == 项目经验
    *统一配置中心*（2024）
    - 支持灰度发布与审计追踪。

    == 技能
    Go / TypeScript / PostgreSQL / Redis / Kubernetes
  ],
)
