#let dark = rgb("#131A28")

#set page(
  margin: (left: 15mm, right: 15mm, top: 10mm, bottom: 12mm),
  footer: [
    #set text(fill: gray, size: 8pt)
    #grid(
      columns: (1fr, 1fr, 1fr),
      align(left)[#smallcaps[Mar 2026]],
      align(center)[#smallcaps[Li #sym.dot.c Ming #sym.dot.c Resume]],
      align(right)[#context counter(page).display()],
    )
  ],
)
#set text(font: ("Source Sans Pro", "Noto Sans CJK SC", "DejaVu Sans"), size: 11pt, fill: dark)
#set par(justify: true, leading: 0.66em)

#let sec(title) = [
  #v(0.55em)
  #set text(size: 15pt)
  #smallcaps(strong(title))
  #box(width: 1fr, line(length: 100%))
  #set text(size: 11pt)
]

#align(center)[
  #set text(size: 31pt, font: ("Roboto", "Source Sans Pro", "DejaVu Sans"))
  #text(weight: "thin")[LI] #text(weight: "bold")[MING]
]

#align(center)[
  #smallcaps[Platform Engineer #sym.dot.c Backend #sym.dot.c Cloud Native]
]

#align(center)[
  ☎ +86 133-2222-8888 #h(0.65em) ✉ liming\@example.com #h(0.65em) 🌐 github.com/liming
]

#sec("Education")
*Nanjing University* #h(1fr) 2017 -- 2021\
B.Sc. in Software Engineering, GPA 3.8/4.0

#sec("Work Experience")
*Acme Platform Team* #h(1fr) 2022 -- Present\
_Backend Engineer_\
- Led API refactor and reduced cross-service coupling.
- Built deployment quality gates with automated checks.

#sec("Projects")
*Internal Dev Portal*\
- One-stop service provisioning and documentation portal.
- Improved onboarding speed for new services.

#sec("Skills")
Go, TypeScript, PostgreSQL, Redis, Kubernetes, Docker, Prometheus
