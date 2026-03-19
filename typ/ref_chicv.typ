#show heading: set text(font: "Linux Biolinum")
#show link: underline

#set page(margin: (x: 0.95cm, y: 1.25cm))
#set text(font: ("Linux Biolinum", "Noto Sans CJK SC", "DejaVu Sans"), size: 10.3pt, lang: "en")
#set par(justify: true)

#let chiline() = { v(-3pt); line(length: 100%); v(-5pt) }

= Alex Chen
alex\@example.com | #link("https://github.com/alex")[github.com/alex] | #link("https://alex.dev")[alex.dev]

== Education
#chiline()
*ShanghaiTech University* #h(1fr) 2018/09 -- 2022/06\
Computer Science #h(1fr) Shanghai, CN
- GPA 3.8/4.0, Outstanding Graduate

== Work Experience
#chiline()
*Acme Data* #h(1fr) 2023/01 -- Present\
Backend Engineer #h(1fr) Remote
- Built and maintained event-driven ingestion services.
- Reduced data pipeline reprocessing cost by 35%.

== Projects
#chiline()
*Feature Flag Platform* #h(1fr) 2024/03 -- 2024/12\
Go + React #h(1fr) Team project
- Designed rollout, rollback, and audit flows for product teams.
- Added SLA dashboards and alert routing.

#h(1fr)
#align(center, text(fill: gray)[Last Updated: Mar 2026])
