#set page(margin: (top: 1.5cm, bottom: 1.9cm, left: 2cm, right: 2cm))
#set text(font: ("IBM Plex Serif", "Noto Serif CJK SC", "Source Han Serif SC", "DejaVu Serif"), size: 10pt, lang: "zh")
#set par(justify: true, spacing: 0.9em)

#let theme = rgb("#26267d")

#show heading.where(level: 2): it => stack(
  v(0.25em),
  text(theme, 1.1em, it.body),
  v(0.45em),
  line(length: 100%, stroke: 0.06em + theme),
)

#let item(title, role, time) = grid(
  columns: (2fr, 1fr, auto),
  title,
  role,
  text(fill: rgb(128, 128, 128), size: 0.9em, time),
)

#let sidebar(side, content) = grid(
  columns: (13%, 0%, 1fr),
  gutter: 0.75em,
  [
    #set align(right)
    #side
  ],
  line(end: (0em, 4.6em), stroke: 0.05em),
  content,
)

= 高松灯
📞 138XXXX8899 · 🏫 北京理工大学 · ✉ gaosongdeng\@163.com · 🌐 github.com/gaosongdeng-rl · 📍 北京市

#h(1em)
_求职意向：运动控制算法工程师（强化学习方向）_

== 🎓 教育背景
#sidebar([2024.06\2020.09], [*北京理工大学* · 机器人工程（本科）\GPA: 3.8 / 4.0（专业前5%）· Rank: 综测前8%（2/25）\核心课程：机器人运动学与动力学、强化学习原理与应用、现代控制理论、深度学习、多刚体动力学、最优控制、机器人仿真技术])

== 👤 基本信息
#sidebar([学校\学历\方向], [北京理工大学\本科\运动控制算法工程师（强化学习方向）])

== 🧪 实习经历
#item([*北京智元机器人科技有限公司*], [*运动控制算法实习生（RL方向）*], [2023.07 -- 2023.09])
- 基于Isaac Gym搭建四足机器人强化学习训练环境，优化PPO奖励函数，越障成功率提升35%。
- 参与仿真到实机迁移，结合域随机化与系统辨识，将动作误差从12%降至5%。
- 参与RL+前馈复合控制架构实现，负责关节力矩控制模块，动态行走能耗降低18%。

== 🧰 专业技能
#sidebar([*掌握*\*熟悉*\*了解*], [
PPO、SAC、TD3、DDPG（奖励函数设计与训练稳定性调优）\
Isaac Gym、MuJoCo、PyTorch、URDF/MJCF建模、并行训练\
RL+PID/前馈/MPC、ONNX/TensorRT、Jetson部署、EtherCAT/CANopen
])

== 🏆 获奖情况
#item([*全国大学生机器人竞赛（RoboMaster）机甲大师赛*], [*国家级二等奖*], [2023 年 10 月])
#item([*北京市大学生机械创新设计大赛*], [*省级一等奖*], [2023 年 05 月])
#item([*北京理工大学“优秀科研创新奖”*], [*校级*], [2022 年 12 月])
#item([*北京理工大学机器人控制算法竞赛*], [*院级一等奖*], [2022 年 06 月])

== 💻 项目经历
#item([*机器人RL动态步态生成与抗扰动控制*], [*算法负责人*], [2023.03 -- 2023.06])
- 设计分层奖励函数，训练效率提升40%。
- 实机在15°斜坡和5cm凸起砂石路稳定性达92%，较传统方案提升45%。

#item([*人形机器人AMP的人体运动复刻与泛化*], [*核心开发*], [2022.09 -- 2023.02])
- 处理1000+帧动捕数据，动作复刻相似度达95%。
- 域自适应后在0.2-0.8摩擦系数地面成功率从70%提升至90%。

#item([*RL+PID复合控制的机械臂柔顺装配系统*], [*算法开发*], [2022.03 -- 2022.08])
- 基于SAC优化PID调节策略，装配力控制误差从±5N降至±1N。
- 轴承压装合格率从85%提升至98%，Jetson Xavier NX部署延迟≤10ms。
