#let cfg = (
  primary: rgb("#0f766e"),
  muted: rgb("#6b7280"),
  font: ("Noto Sans CJK SC", "Source Han Sans SC", "Source Han Sans", "DejaVu Sans"),
)

#set page(margin: (x: 1.65cm, y: 1.5cm))
#set text(font: cfg.font, size: 10pt, lang: "zh")
#set par(justify: true, leading: 0.65em)

#let title-chip(icon, body) = box(
  fill: cfg.primary,
  inset: (x: 0.45em, y: 0.22em),
  radius: 0.15em,
  text(white, [#icon #h(0.35em) #body]),
)

#let section(title, icon: "◉") = [
  #v(0.65em)
  #title-chip(icon, strong(title))
  #v(0.25em)
]

#let row(date, left, right: []) = [
  #grid(
    columns: (16%, 1fr, auto),
    column-gutter: 0.5em,
    text(fill: cfg.muted, date),
    left,
    right,
  )
]

#align(center)[
  #text(2em, weight: "bold", fill: cfg.primary)[林明轩]
  #linebreak()
  #text(0.92em)[📞 133-3333-3333 · ✉ liming\@example.com · 🌐 github.com/liming-dev]
]

#section("求职意向", icon: "🎯")
后端开发 / 平台工程师，3 年 Go 与云原生项目经验，关注稳定性、性能与工程效率。

#section("工作经历", icon: "💼")
#row(
  "2023.07 - 至今",
  [*某云计算公司* · 后端工程师\
  负责容器平台核心控制面，主导服务拆分与链路监控建设。],
)
- 将核心 API P95 延迟从 220ms 优化到 110ms。
- 建立灰度发布与回滚机制，线上故障恢复时间下降 60%。

#row(
  "2021.07 - 2023.06",
  [*某互联网公司* · 基础架构工程师\
  负责消息平台与服务治理模块，落地可观测性体系。],
)
- 设计事件总线重试策略，日消息处理量提升至 1.8 亿。

#section("项目经历", icon: "🧩")
#row(
  "2024.01 - 2024.08",
  [*多租户运维平台*],
  right: [Go · Kubernetes · PostgreSQL],
)
- 设计租户级配额与审计策略，支持 200+ 团队接入。
- 通过异步任务编排减少页面等待时间约 45%。

#section("教育背景", icon: "🎓")
#row(
  "2017.09 - 2021.06",
  [*华中科技大学* · 计算机科学与技术（本科）\GPA 3.8/4.0，校级优秀毕业生],
)

#section("技能清单", icon: "🛠")
- 语言：Go、Python、TypeScript
- 中间件：Redis、Kafka、PostgreSQL
- 工具链：Docker、Kubernetes、Prometheus、GitHub Actions
