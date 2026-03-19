#set page(margin: (x: 2.1cm, y: 1.9cm))
#set text(font: ("New Computer Modern", "Source Han Serif SC", "Noto Serif CJK SC", "DejaVu Serif"), size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.72em)

#let blue = rgb(56, 115, 192)
#let gray = rgb(128, 128, 128)

#show heading.where(level: 1): it => block(width: 100%)[
  #text(fill: blue, weight: "bold", it.body)
  #v(0.15em)
  #line(length: 100%, stroke: 0.8pt + blue)
]

#let info() = align(center)[
  ☎ (+86) 155-5555-5555 #h(0.7em) ✉ username\@gmail.com #h(0.7em) 🌐 github.com/username
]

#let date(body) = text(fill: gray, body)

#align(center)[#text(2.35em, weight: "regular")[姓名]]
#info()

= 教育背景
*华中科技大学* #h(0.8em) 计算机科学与技术（本科） #h(1fr) #date[2021 -- 2025]\
GPA 3.8/4.0 · CET-6

= 专业技能
C/C++、Rust、Typst、Vue、React、TypeScript、Linux、Git

= 获奖情况
#table(
  columns: (1fr, 1fr, auto),
  stroke: none,
  inset: (x: 0pt, y: 0.28em),
  [*全国大学生数学建模竞赛*], [*一等奖*], [#date[2023.10]],
  [*ACM-ICPC 区域赛*], [*铜奖*], [#date[2022.12]],
)

= 项目经历
#table(
  columns: (auto, 1fr, auto),
  stroke: none,
  column-gutter: 0.8em,
  inset: (x: 0pt, y: 0.3em),
  [*分布式日志平台*], [导师项目], [#date[2023.02 -- 2023.08]],
  [
    #table.cell(colspan: 3)[
      _Golang · Kafka · ClickHouse_\
      - 构建日志采集与检索服务，峰值吞吐提升至 120 万条/分钟。
      - 落地多维检索与聚合分析，定位故障效率显著提升。
    ]
  ],
)
