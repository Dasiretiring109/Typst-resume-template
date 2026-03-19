// no_profile_picture

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
#align(center)[
  #text(18pt, weight: "bold")[高松灯]
  #v(0.12em)
  #text(11pt, weight: "bold")[求职意向：运动控制算法工程师（强化学习方向）]
]

#v(0.35em)
#grid(
  columns: (1fr, 1.3fr, 1fr),
  align: center,
  [📞 138XXXX8899],
  [📧 #link("mailto:gaosongdeng@163.com")[gaosongdeng\@163.com]],
 // [🌐 #link("https://github.com/gaosongdeng-rl")[github.com/gaosongdeng-rl]],
  [📍 北京市]
)

// 教育背景
#section-title[教育背景]
#grid(
  columns: (1.5fr, 2.3fr, 2fr),
  [*2020.09 - 2024.06*],
  align(center)[*北京理工大学*],
  align(right)[机器人工程 | 本科]
)
#v(0.12em)
*GPA / Rank*：3.8 / 4.0（专业前5%），综测前8%（2/25）
#v(0.08em)
*核心课程*：机器人运动学与动力学、强化学习原理与应用、现代控制理论、深度学习、多刚体动力学、最优控制、机器人仿真技术

// 项目经历
#section-title[项目经历]
#grid(
  columns: (1.8fr, 2.4fr, 1.2fr),
  [*2023.03 - 2023.06*],
  [*四足机器人RL动态步态生成与抗扰动控制*],
  align(right)[算法负责人]
)
- 核心技术：PPO+TD3、域随机化、力位混合控制、Isaac Gym、TensorRT
- 实机在15°斜坡与5cm凸起砂石路稳定性达92%，较传统方案提升45%

#v(0.16em)
#grid(
  columns: (1.8fr, 2.4fr, 1.2fr),
  [*2022.09 - 2023.02*],
  [*人形机器人基于AMP的人体运动复刻与泛化*],
  align(right)[核心开发]
)
- 基于AMP+行为克隆完成1000+帧动捕数据处理，动作复刻相似度达95%
- 引入域自适应策略后，在0.2-0.8摩擦系数地面成功率由70%提升至90%

#v(0.16em)
#grid(
  columns: (1.8fr, 2.4fr, 1.2fr),
  [*2022.03 - 2022.08*],
  [*RL+PID复合控制的机械臂柔顺装配系统*],
  align(right)[算法开发]
)
- 基于SAC优化PID自适应调节，装配力控制误差从±5N降至±1N
- 轴承压装场景合格率从85%提升至98%，Jetson Xavier NX部署延迟≤10ms

// 专业技能
#section-title[专业技能]
- 强化学习：熟练掌握PPO、SAC、TD3、DDPG，具备奖励函数设计与训练稳定性调优经验
- 复刻与控制：掌握AMP、行为克隆与RL+PID/前馈/MPC复合控制架构
- 仿真与工程：熟悉Isaac Gym / MuJoCo、PyTorch、URDF / MJCF建模与域随机化
- 部署与系统：掌握ONNX / TensorRT推理加速、Jetson端部署、EtherCAT / CANopen通讯

// 荣誉证书
#section-title[荣誉证书]
#grid(
  columns: (2fr, 8fr, 2fr),
  gutter: 0.45em,
  [*2023.10*], [全国大学生机器人竞赛（RoboMaster）机甲大师赛], align(right)[国家级二等奖],
  [*2023.05*], [北京市大学生机械创新设计大赛], align(right)[省级一等奖],
  [*2022.12*], [北京理工大学“优秀科研创新奖”], align(right)[校级],
  [*2022.06*], [北京理工大学机器人控制算法竞赛], align(right)[院级一等奖],
)
