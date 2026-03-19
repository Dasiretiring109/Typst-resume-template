#set page(margin: (x: 1.3cm, y: 1.3cm))
#set text(font: ("Noto Sans CJK SC", "Source Han Sans SC", "DejaVu Sans"), size: 10.2pt, lang: "zh")
#set par(justify: true, leading: 0.7em)

#let theme = rgb("#1d4ed8")
#let soft = rgb("#eef2ff")

#let badge(content) = box(
  fill: soft,
  inset: (x: 0.45em, y: 0.2em),
  radius: 0.2em,
  text(theme, content),
)

#let panel(title, body) = block(
  inset: 0.55em,
  radius: 0.25em,
  stroke: 0.7pt + rgb("#cbd5e1"),
  [
    #text(weight: "bold", fill: theme, upper(title))
    #v(0.25em)
    #body
  ],
)

#block(fill: theme, inset: (x: 0.75em, y: 0.65em), radius: 0.35em)[
  #text(white, 1.85em, weight: "bold")[高松灯]
  #linebreak()
  #text(white, [运动控制算法工程师（强化学习方向） · 北京市])
  #linebreak()
  #text(white, [gaosongdeng\@163.com · 138XXXX8899 · github.com/gaosongdeng-rl])
]

#v(0.6em)
#grid(
  columns: (1.1fr, 1.6fr),
  column-gutter: 0.7em,
  panel("技能", [
    #badge("PPO") #h(0.2em) #badge("SAC") #h(0.2em) #badge("TD3") #h(0.2em) #badge("DDPG")
    #v(0.35em)
    #badge("Isaac Gym") #h(0.2em) #badge("MuJoCo") #h(0.2em) #badge("PyTorch")
    #v(0.35em)
    #badge("ONNX/TensorRT") #h(0.2em) #badge("Jetson") #h(0.2em) #badge("EtherCAT/CANopen")
  ]),
  panel("基本信息", [
    学校：北京理工大学（机器人工程，本科）\
    GPA 3.8/4.0（专业前5%），综测前8%（2/25）\
    核心课程：机器人运动学与动力学、强化学习原理与应用、现代控制理论、深度学习、多刚体动力学、最优控制、机器人仿真技术
  ]),
)

#v(0.45em)
#panel("项目精选", [
  *机器人RL动态步态生成与抗扰动控制* #h(1fr) #text(fill: rgb("#64748b"))[2023.03 - 2023.06]
  - 算法负责人；设计分层奖励函数，训练效率提升40%。
  - 实机在15°斜坡和5cm凸起砂石路稳定性达92%，较传统方案提升45%。

  *人形机器人AMP的人体运动复刻与泛化* #h(1fr) #text(fill: rgb("#64748b"))[2022.09 - 2023.02]
  - 核心开发；处理1000+帧动捕数据，动作复刻相似度达95%。
  - 域自适应后在0.2-0.8摩擦系数地面成功率从70%提升至90%。

  *RL+PID复合控制的机械臂柔顺装配系统* #h(1fr) #text(fill: rgb("#64748b"))[2022.03 - 2022.08]
  - 算法开发；基于SAC优化PID调节策略，装配力控制误差从±5N降至±1N。
  - 轴承压装合格率从85%提升至98%，Jetson Xavier NX部署延迟≤10ms。
])

#v(0.45em)
#panel("实习经历", [
  *北京智元机器人科技有限公司* · 运动控制算法实习生（RL方向） #h(1fr) #text(fill: rgb("#64748b"))[2023.07 - 2023.09]
  - 基于Isaac Gym搭建四足机器人强化学习训练环境，优化PPO奖励函数，越障成功率提升35%。
  - 参与仿真到实机迁移，结合域随机化与系统辨识，将动作误差从12%降至5%。
  - 参与RL+前馈复合控制架构实现，负责关节力矩控制模块，动态行走能耗降低18%。
])

#v(0.45em)
#panel("荣誉证书", [
  - 2023.10 全国大学生机器人竞赛（RoboMaster）机甲大师赛，国家级二等奖
  - 2023.05 北京市大学生机械创新设计大赛，省级一等奖
  - 2022.12 北京理工大学“优秀科研创新奖”，校级
  - 2022.06 北京理工大学机器人控制算法竞赛，院级一等奖
])
