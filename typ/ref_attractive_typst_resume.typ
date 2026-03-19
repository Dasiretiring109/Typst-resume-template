#set page(margin: (x: 1.4cm, y: 1.35cm))
#set text(font: ("Mulish", "Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.62em)

#let theme = rgb("#4273B0")

#let bar(title) = align(center,
  box(
    fill: theme,
    inset: (x: 0.45em, y: 0.2em),
    radius: 0.16em,
    text(white, weight: "bold", upper(title)),
    width: 1fr,
  )
)

#align(center)[
  #text(2.25em, fill: theme, weight: "bold", upper("赵宁"))
  #linebreak()
  #text(1.05em, upper("Platform Engineer"))
]

#v(0.45em)
#grid(
  columns: (1fr, 2fr),
  column-gutter: 0.95em,
  [
    #bar("Contact")
    138-1111-2222\
    zhaoning\@example.com\
    github.com/zhaoning

    #v(0.35em)
    #bar("Skills")
    Go · Rust · TS\
    K8s · Redis · MySQL\
    GitHub Actions

    #v(0.35em)
    #bar("Language")
    中文（母语）\
    English（工作）
  ],
  [
    #bar("Experience")
    *某电商平台* #h(1fr) _后端工程师_\
    #text(fill: rgb("#64748b"))[2023.03 -- 至今]
    - 重构订单路由模块，峰值流量场景下失败率降低 42%。
    - 建立发布回归清单，减少线上配置错误。

    #v(0.25em)
    #bar("Projects")
    *统一配置中心* #h(1fr) 2024
    - 为 60+ 服务提供灰度配置发布和审计追踪。
    - 引入缓存层后，读取延迟下降至原来的 55%。

    #v(0.25em)
    #bar("Education")
    *北京邮电大学* · 软件工程 #h(1fr) 2019 -- 2023
  ],
)
