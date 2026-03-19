#set page(margin: (x: 1.8cm, y: 1.5cm), numbering: "1 / 1", number-align: center)
#set text(
  font: ("KpRoman", "Source Han Serif SC", "Noto Serif CJK SC", "DejaVu Serif"),
  size: 10pt,
  lang: "zh",
)
#set par(justify: true)

#let section(icon, title) = [
  #v(0.45em)
  #text(weight: "bold", upper([#icon #h(0.2em) #title]))
  #v(-0.15em)
  #line(length: 100%)
]

#align(center)[
  #text(1.72em, weight: "bold", smallcaps[Li Ming])
  #linebreak()
  liming\@example.com\
  +86 133-5555-6666\
  Shanghai · github.com/liming
]

#section("🧭", "Self Intro")
热爱构建高可用后端系统，关注可观测性、自动化交付和团队工程规范。

#section("🎓", "Education")
*同济大学* · 软件工程（本科） #h(1fr) 2018.09 -- 2022.06

#section("🧪", "Skills")
Go / Rust / TypeScript / Linux / Docker / Kubernetes / PostgreSQL

#section("🚀", "Projects")
*云原生资源平台* #h(1fr) 2024.03 -- 2024.11
- 提供多环境发布、资源配额管理与回滚能力。
- 通过缓存与并发优化，关键接口耗时下降 40%+。

#section("🎯", "Activities")
- 开源贡献：参与维护内部脚手架与 CI 流程模板。
- 技术分享：每月组织 1 次后端最佳实践分享。
