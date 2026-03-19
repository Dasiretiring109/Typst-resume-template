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
    #text(2.2em, weight: "bold")[高松灯]
    #linebreak()
    #text(fill: rgb("#737373"), 1.2em, style: "italic")[运动控制算法工程师（强化学习方向）]
  ],
  align(right + top)[
    gaosongdeng\@163.com\
    138XXXX8899\
    北京市\
    github.com/gaosongdeng-rl
  ],
)

= Basic Information
#grid(columns: (24%, 1fr), [学校], [北京理工大学])
#grid(columns: (24%, 1fr), [学历], [本科])
#grid(columns: (24%, 1fr), [求职意向], [运动控制算法工程师（强化学习方向）])

= Education
#entry("Sep", "2020", "Jun", "2024", [机器人工程（本科）], "北京理工大学", [
- GPA 3.8/4.0（专业前5%），综测前8%（2/25）。
- 核心课程：机器人运动学与动力学、强化学习原理与应用、现代控制理论、深度学习、多刚体动力学、最优控制、机器人仿真技术。
])

= Internship
#entry("Jul", "2023", "Sep", "2023", [运动控制算法实习生（RL方向）], "北京智元机器人科技有限公司", [
- 基于Isaac Gym搭建四足机器人强化学习训练环境，优化PPO奖励函数，越障成功率提升35%。
- 参与仿真到实机迁移，结合域随机化与系统辨识，将动作误差从12%降至5%。
- 参与RL+前馈复合控制架构实现，负责关节力矩控制模块，动态行走能耗降低18%。
])

= Projects
#entry("Mar", "2023", "Jun", "2023", [机器人RL动态步态生成与抗扰动控制（算法负责人）], "项目经历", [
- 设计分层奖励函数，训练效率提升40%。
- 实机在15°斜坡和5cm凸起砂石路稳定性达92%，较传统方案提升45%。
])

#entry("Sep", "2022", "Feb", "2023", [人形机器人AMP的人体运动复刻与泛化（核心开发）], "项目经历", [
- 处理1000+帧动捕数据，动作复刻相似度达95%。
- 域自适应后在0.2-0.8摩擦系数地面成功率从70%提升至90%。
])

#entry("Mar", "2022", "Aug", "2022", [RL+PID复合控制的机械臂柔顺装配系统（算法开发）], "项目经历", [
- 基于SAC优化PID调节策略，装配力控制误差从±5N降至±1N。
- 轴承压装合格率从85%提升至98%，Jetson Xavier NX部署延迟≤10ms。
])

= Skills
- 强化学习：PPO、SAC、TD3、DDPG；掌握奖励函数设计与训练稳定性调优
- 仿真开发：Isaac Gym、MuJoCo、PyTorch、URDF/MJCF建模、并行训练
- 控制部署：RL+PID/前馈/MPC复合控制，ONNX/TensorRT加速，Jetson实时部署
- 工程协同：熟悉EtherCAT/CANopen通讯，可完成算法与伺服驱动/传感器对接

= Honors
- 2023.10 全国大学生机器人竞赛（RoboMaster）机甲大师赛，国家级二等奖
- 2023.05 北京市大学生机械创新设计大赛，省级一等奖
- 2022.06 北京理工大学机器人控制算法竞赛，院级一等奖
