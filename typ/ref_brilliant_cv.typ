#set page(margin: (x: 1.5cm, y: 1.45cm))
#set text(font: ("Source Sans 3", "Source Sans Pro", "Noto Sans CJK SC", "DejaVu Sans"), size: 10.2pt, lang: "zh")
#set par(justify: true, leading: 0.65em)

#let brand = rgb("#0f3f72")
#let soft = rgb("#e7eff8")

#let chip(content) = box(
  fill: soft,
  radius: 0.22em,
  inset: (x: 0.42em, y: 0.18em),
  text(fill: brand, content),
)

#let section(title) = [
  #v(0.55em)
  #grid(
    columns: (2pt, 1fr),
    column-gutter: 0.38em,
    rect(width: 2pt, height: 1.05em, fill: brand),
    text(weight: "bold", fill: brand, upper(title)),
  )
  #v(0.15em)
]

#grid(
  columns: (1fr, auto),
  [
    #text(2em, weight: "bold")[高松灯]
    #linebreak()
    #text(fill: rgb("#475569"))[运动控制算法工程师（强化学习方向）]
    #linebreak()
    gaosongdeng\@163.com · 138XXXX8899 · 北京市 · github.com/gaosongdeng-rl
  ],
  box(
    stroke: 0.8pt + rgb("#cbd5e1"),
    radius: 50%,
    width: 2.8cm,
    height: 2.8cm,
    align(center + horizon, text(fill: rgb("#64748b"), "PHOTO")),
  ),
)

#section("Basic Information")
- 学校：北京理工大学
- 学历：本科（机器人工程）
- 求职意向：运动控制算法工程师（强化学习方向）

#section("Internship")
*北京智元机器人科技有限公司* · 运动控制算法实习生（RL方向） #h(1fr) 2023.07 -- 2023.09
- 基于Isaac Gym搭建四足机器人强化学习训练环境，优化PPO奖励函数，越障成功率提升35%。
- 参与仿真到实机迁移，结合域随机化与系统辨识，将动作误差从12%降至5%。
- 参与RL+前馈复合控制架构实现，负责关节力矩控制模块，动态行走能耗降低18%。

#section("Projects")
*机器人RL动态步态生成与抗扰动控制* #h(1fr) 2023.03 -- 2023.06
- 算法负责人；设计分层奖励函数，训练效率提升40%。
- 实机在15°斜坡和5cm凸起砂石路稳定性达92%，较传统方案提升45%。

*人形机器人AMP的人体运动复刻与泛化* #h(1fr) 2022.09 -- 2023.02
- 核心开发；处理1000+帧动捕数据，动作复刻相似度达95%。
- 域自适应后在0.2-0.8摩擦系数地面成功率从70%提升至90%。

*RL+PID复合控制的机械臂柔顺装配系统* #h(1fr) 2022.03 -- 2022.08
- 算法开发；基于SAC优化PID调节策略，装配力控制误差从±5N降至±1N。
- 轴承压装合格率从85%提升至98%，Jetson Xavier NX部署延迟≤10ms。

#section("Skills")
#chip("PPO") #h(0.25em) #chip("SAC") #h(0.25em) #chip("TD3") #h(0.25em) #chip("DDPG") #h(0.25em) #chip("Isaac Gym") #h(0.25em) #chip("MuJoCo")
#linebreak()
#chip("PyTorch") #h(0.25em) #chip("ONNX/TensorRT") #h(0.25em) #chip("Jetson") #h(0.25em) #chip("EtherCAT/CANopen")

#section("Education")
*北京理工大学* · 机器人工程（本科） #h(1fr) 2020.09 -- 2024.06
- GPA 3.8 / 4.0（专业前5%），综测前8%（2/25）
- 核心课程：机器人运动学与动力学、强化学习原理与应用、现代控制理论、深度学习、多刚体动力学、最优控制、机器人仿真技术

#section("Honors")
- 2023.10 全国大学生机器人竞赛（RoboMaster）机甲大师赛，国家级二等奖
- 2023.05 北京市大学生机械创新设计大赛，省级一等奖
- 2022.12 北京理工大学“优秀科研创新奖”，校级
- 2022.06 北京理工大学机器人控制算法竞赛，院级一等奖
