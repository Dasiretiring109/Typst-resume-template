#set page(margin: (x: 1.7cm, y: 1.55cm))
#set text(font: ("Linux Libertine", "Noto Serif CJK SC", "DejaVu Serif"), size: 10pt)
#set par(justify: true)

#show heading: it => [
  #pad(bottom: -8pt, [#smallcaps(it.body)])
  #line(length: 100%, stroke: 1pt)
]

#align(center)[
  #text(weight: "bold", 1.8em)[王宇]
]

#pad(top: 0.45em, bottom: 0.55em, x: 2em, align(center)[
  #grid(
    columns: 4,
    gutter: 0.9em,
    [✉ wy\@example.com],
    [☎ 139-7777-2222],
    [🏠 Shanghai],
    [🌐 github.com/wangyu],
  )
])

= Brief
A software engineer focused on backend services, distributed systems, and developer tooling.

= Education
*Tongji University* #h(1fr) 2017 -- 2021\
B.Eng. in Software Engineering

= Experience
*Acme Systems* #h(1fr) 2022 -- Present\
_Staff Software Engineer_\
- Maintained core service mesh control plane and delivery pipelines.
- Drove automated checks to reduce release regressions.

= Personal Projects
*OpenTelemetry Sidecar Toolkit*\
- Built a lightweight sidecar for metrics and trace forwarding.
- Improved observability bootstrap experience for internal teams.

= Skills
- Programming: Go, Rust, TypeScript, Python
- Infra: Docker, Kubernetes, PostgreSQL, Redis
