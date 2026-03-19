#let main = rgb(147, 14, 14)

#set page(margin: (x: 1.5cm, y: 1.4cm))
#set text(font: ("Latin Modern Sans", "Inria Sans", "Noto Sans CJK SC", "DejaVu Sans"), size: 10pt)
#set par(justify: true, leading: 0.62em)

#show heading.where(level: 1): it => [
  #box(inset: (right: 0.4cm, bottom: 0.08em), rect(fill: main, width: 25%, height: 0.2em))
  #text(fill: main, weight: "bold", it.body)
]

#let datebox(month, year) = box(
  inset: 0.2em,
  stroke: 0.5pt + rgb("#d4d4d8"),
  align(center)[
    #text(size: 0.78em, month)
    #linebreak()
    #text(weight: "bold", year)
  ],
)

#let entry(startm, starty, endm, endy, role, place, body) = grid(
  columns: (24%, 1fr),
  column-gutter: 0.6em,
  align(center)[#stack(dir: ttb, spacing: 0.2em, datebox(startm, starty), text("to"), datebox(endm, endy))],
  [
    #text(weight: "bold", role)
    #linebreak()
    #text(style: "italic", place)
    #linebreak()
    #body
  ],
)

#grid(
  columns: (1fr, auto),
  [
    #text(2.2em, weight: "bold")[周辰]
    #linebreak()
    #text(fill: rgb("#737373"), 1.2em, style: "italic")[Senior Backend Engineer]
  ],
  align(right + top)[
    zhouch\@example.com\
    +86 188-2222-3333\
    github.com/zhouch
  ],
)

= Education
#entry("Sep", "2016", "Jun", "2020", [Computer Science], "Southeast University", [GPA 3.7/4.0, Outstanding Graduate])

= Work Experience
#entry("Jul", "2022", "Now", "Now", [Senior Backend Engineer], "Acme Cloud", [
- 负责 API 网关、鉴权和流量治理模块。
- 推动 SLO 看板建设，响应延迟与故障定位效率明显改善。
])

= Languages
#grid(columns: (24%, 1fr), [中文], [母语])
#grid(columns: (24%, 1fr), [English], [Professional Working Proficiency])
