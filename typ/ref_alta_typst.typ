#let primary = rgb("#3E0C87")
#let linkc = rgb("#12348e")

#set page(margin: (x: 1.75cm, y: 1.55cm))
#set text(font: ("IBM Plex Sans", "Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 9.8pt)
#set par(justify: true, leading: 0.6em)

#show heading.where(level: 2): it => [
  #text(fill: primary, weight: "bold", it.body)
  #v(-0.05em)
  #line(length: 100%, stroke: 0.9pt + primary)
]

#let skill(name, rating) = [
  #name
  #h(1fr)
  #for i in range(5) [
    #circle(radius: 3.2pt, fill: if i < rating { linkc } else { rgb("#c0c0c0") })
    #if i < 4 [#h(1.4pt)]
  ]
]

#text(2em, weight: "bold")[王知行]
\
#text(0.92em)[wzx\@example.com · +86 139-6666-2222 · github.com/wzx]
\
后端 / 平台工程师，擅长高并发服务与可观测性建设。

#columns(2, gutter: 14pt)[
  == Experience
  *某智能制造企业*\
  _Senior Engineer_ #h(1fr) 2022 -- Present
  - 负责设备数据平台后端与任务调度服务。
  - 推动可观测性改造，告警误报率下降 35%。

  == Projects
  *设备日志中台* #h(1fr) 2024
  - 构建采集、清洗、检索全链路。
  - 支持按产线和设备型号快速筛查问题。

  == Skills
  #skill("Go", 5)\
  #skill("Kubernetes", 4)\
  #skill("PostgreSQL", 4)\
  #skill("Python", 3)

  == Education
  *浙江大学*\
  软件工程 · 本科 #h(1fr) 2016 -- 2020

  == Links
  #text(fill: linkc)[github.com/wzx]\
  #text(fill: linkc)[linkedin.com/in/wzx]
]
