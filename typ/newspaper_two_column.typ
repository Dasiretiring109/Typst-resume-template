#set page(margin: (x: 1.2cm, y: 1.25cm))
#set text(font: ("Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 9.6pt, lang: "zh")
#set par(justify: true, leading: 0.62em)

#show heading.where(level: 2): it => [
  #text(weight: "bold", fill: rgb("#1f2937"), it.body)
  #line(length: 100%, stroke: 0.7pt + rgb("#9ca3af"))
]

#align(center)[
  #text(1.9em, weight: "bold")[林明轩]
  #linebreak()
  后端工程师 · liming\@example.com · 133-3333-3333
]

#v(0.35em)
#columns(2, gutter: 14pt)[
  == 个人简介
  专注平台后端研发，具备从设计到落地的闭环经验。

  == 教育背景
  同济大学 软件工程（2018 - 2022）

  == 工作经历
  某 SaaS 公司 后端工程师（2022 - 至今）
  - 负责权限、审计、监控模块。

  == 项目经历
  - 统一配置中心
  - 任务编排平台

  == 技能
  Go / Rust / TypeScript / Redis / PostgreSQL / Docker / K8s
]
