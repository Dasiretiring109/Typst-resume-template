#set page(margin: (top: 1.5cm, bottom: 1.9cm, left: 2cm, right: 2cm))
#set text(font: ("IBM Plex Serif", "Noto Serif CJK SC", "Source Han Serif SC", "DejaVu Serif"), size: 10pt, lang: "zh")
#set par(justify: true, spacing: 0.9em)

#let theme = rgb("#26267d")

#show heading.where(level: 2): it => stack(
  v(0.25em),
  text(theme, 1.1em, it.body),
  v(0.45em),
  line(length: 100%, stroke: 0.06em + theme),
)

#let item(title, role, time) = grid(
  columns: (30%, 1fr, auto),
  title,
  role,
  text(fill: rgb(128, 128, 128), size: 0.9em, time),
)

#let sidebar(side, content) = grid(
  columns: (13%, 0%, 1fr),
  gutter: 0.75em,
  [
    #set align(right)
    #side
  ],
  line(end: (0em, 4.6em), stroke: 0.05em),
  content,
)

= 林明
📞 (+86) 133-3333-3333 · 🏫 某某大学 · ✉ liming\@example.com · 🌐 github.com/liming-dev

#h(1em)
_简历内容为示例：专注全栈开发与云平台工程，重视工程规范与可维护性。_

== 🎓 教育背景
#sidebar([2024.06\2020.09], [*某某大学* · 计算机科学与技术\GPA: 3.8 / 4.0 · Rank: 前 10%])

== 🧰 专业技能
#sidebar([*掌握*\*熟悉*\*了解*], [
Go、Python、TypeScript\
Kubernetes、Docker、PostgreSQL\
Linux、GitHub Actions
])

== 🏆 获奖情况
#item([*全国大学生数学建模竞赛*], [*省级一等奖*], [2022 年 10 月])
#item([*ACM-ICPC 区域赛*], [*铜奖*], [2021 年 12 月])

== 💻 项目经历
#item([*轻量级容器云平台*], [*实验室项目*], [2023.03 -- 2023.12])
- 设计租户管理与权限控制模块。
- 构建监控告警体系，提升问题发现与恢复速度。
