// with_profile_picture

// 页面全局设置
#set page(paper: "a4", margin: (x: 15mm, y: 12mm))

// 文本与段落基础设置
#set text(font: ("Noto Sans CJK SC"), size: 10.5pt, lang: "zh")
#set par(first-line-indent: 0pt, leading: 0.65em, justify: true)
#set list(indent: 1em, body-indent: 1em, marker: [·])

// 自定义模块标题样式
#let section-title(title) = {
  v(0.4em)
  text(12pt, weight: "bold", fill: rgb("#4682b4"))[#title]
  line(length: 100%, stroke: (paint: rgb("#4682b4"), thickness: 0.5pt))
  v(0.2em)
}

// ========== 正文开始 ==========
#grid(
  columns: (4fr, 1fr),
  column-gutter: 8mm,
  [
    #grid(
      columns: (auto, 1fr),
      column-gutter: 0.8em,
      align(bottom)[#text(18pt, weight: "bold")[高松灯]],
      align(bottom)[#text(10.5pt, weight: "regular")[*求职意向：* 运动控制算法工程师（强化学习方向）]]
    )

    #section-title[基本信息]
    #grid(
      columns: (1fr, 1fr, 2fr),
      gutter: 0.5em,
      [*学校：* 北京理工大学],
      [*学历：* 本科],
      [*联系电话：* 138XXXX8899]
    )
    #grid(
      columns: (1fr, 2fr, 1.5fr),
      gutter: 0.5em,
      [*所在城市：* 北京市],
      [*邮箱：* #link("mailto:gaosongdeng@163.com")[gaosongdeng\@163.com]],
      [*GitHub：* #link("https://github.com/gaosongdeng-rl")[gaosongdeng-rl]],
    )
  ],
  align(top + right)[
    #image("../images/image.png", width: 26mm, height: auto)
  ]
)

// 教育背景
#section-title[教育背景]
#grid(
  columns: (1.2fr, 2.5fr, 2fr),
  [*2020.09 - 2024.06*],
  align(center)[*北京理工大学*],
  align(right)[机器人工程 | 本科]
)
#v(0.15em)
*GPA / Rank*：3.8 / 4.0（专业前5%），综测前8%（2/25）
#v(0.08em)
*核心课程*：机器人运动学与动力学、强化学习原理与应用、现代控制理论、深度学习、多刚体动力学、最优控制、机器人仿真技术

// 实习经历
#section-title[实习经历]
#grid(
  columns: (1.8fr, 2fr, 1.5fr),
  [*2023.07 - 2023.09*],
  [*北京智元机器人科技有限公司*],
  align(right)[运动控制算法实习生（RL方向）]
)
- 基于Isaac Gym搭建四足机器人强化学习训练环境，优化PPO奖励函数，越障成功率提升35%
- 参与仿真到实机迁移，结合域随机化与系统辨识，将动作误差从12%降至5%
- 参与RL+前馈复合控制架构实现，负责关节力矩控制模块，动态行走能耗降低18%

// 项目经历
#section-title[项目经历]
#grid(
  columns: (1.8fr, 2fr, 1.5fr),
  [*2023.03 - 2023.06*],
  [*机器人RL动态步态生成与抗扰动控制*],
  align(right)[算法负责人]
)
- 设计分层奖励函数，训练效率提升40%
- 实机在15°斜坡和5cm凸起砂石路稳定性达92%，较传统方案提升45%

#v(0.2em)
#grid(
  columns: (1.8fr, 2fr, 1.5fr),
  [*2022.09 - 2023.02*],
  [*人形机器人AMP的人体运动复刻与泛化*],
  align(right)[核心开发]
)
- 处理1000+帧动捕数据，动作复刻相似度达95%
- 域自适应后在0.2-0.8摩擦系数地面成功率从70%提升至90%

#v(0.2em)
#grid(
  columns: (1.8fr, 2fr, 1.5fr),
  [*2022.03 - 2022.08*],
  [*RL+PID复合控制的机械臂柔顺装配系统*],
  align(right)[算法开发]
)
- 基于SAC优化PID调节策略，装配力控制误差从±5N降至±1N
- 轴承压装合格率从85%提升至98%，Jetson Xavier NX部署延迟≤10ms

// 专业技能
#section-title[专业技能]
- 强化学习：PPO、SAC、TD3、DDPG；掌握奖励函数设计与训练稳定性调优
- 仿真开发：Isaac Gym、MuJoCo、PyTorch、URDF/MJCF建模、并行训练
- 控制部署：RL+PID/前馈/MPC复合控制，ONNX/TensorRT加速，Jetson实时部署
- 工程协同：熟悉EtherCAT/CANopen通讯，可完成算法与伺服驱动/传感器对接

// 荣誉证书
#section-title[荣誉证书]
#grid(
  columns: (2fr, 8fr, 2fr),
  gutter: 0.5em,
  [*2023.10*], [全国大学生机器人竞赛（RoboMaster）机甲大师赛], align(right)[国家级二等奖],
  [*2023.05*], [北京市大学生机械创新设计大赛], align(right)[省级一等奖],
  [*2022.12*], [北京理工大学“优秀科研创新奖”], align(right)[校级],
  [*2022.06*], [北京理工大学机器人控制算法竞赛], align(right)[院级一等奖],
)
