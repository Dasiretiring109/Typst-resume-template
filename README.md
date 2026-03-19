# Typst 简历模板（分层目录版）

本仓库提供两个中文 Typst 简历模板（无头像 / 有头像），并已经按 `typ / images / pdf` 分层整理，方便长期维护。

## 目录结构

```text
Typst-resume-template/
├─ typ/
│  ├─ no_profile_picture.typ
│  └─ with_profile_picture.typ
├─ images/
│  └─ image.png
├─ pdf/
│  ├─ no_profile_picture.pdf
│  └─ with_profile_picture.pdf
├─ README.md
└─ LICENSE
```

- `typ/`：模板源文件，只负责排版内容。
- `images/`：图片素材（头像等）。
- `pdf/`：导出后的 PDF 文件。

## 模板文件说明

### 1) `typ/no_profile_picture.typ`
- 无头像版本。
- 适合投递系统、正文信息优先的场景。

### 2) `typ/with_profile_picture.typ`
- 有头像版本。
- 默认头像路径已改为：`#image("../images/image.png", ...)`。

## 快速开始（VS Code + Tinymist）

### 1. 安装插件
- 打开 VS Code 扩展市场（`Ctrl+Shift+X`）。
- 安装 `Tinymist Typst`。
- 建议额外安装 `vscode-pdf` 方便查看导出的 PDF。

### 2. 打开模板并编辑
- 打开 `typ/no_profile_picture.typ` 或 `typ/with_profile_picture.typ`。
- 替换模板中的占位符内容（如 `姓名`、`XXXXX` 等）。

### 3. 实时预览
- Tinymist 会提供实时预览。
- 如果没有自动显示预览：
  - 命令面板（`Ctrl+Shift+P`）执行 `Typst: Open Preview`。

### 4. 导出 PDF（推荐导出到 `pdf/`）

#### 方式 A：Tinymist 导出
- 在预览窗口点击导出。
- 若导出到了 `typ/` 目录，可手动移动到 `pdf/`。

#### 方式 B：Typst CLI（路径最稳定，推荐）
在仓库根目录执行：

```bash
typst compile typ/no_profile_picture.typ pdf/no_profile_picture.pdf
typst compile typ/with_profile_picture.typ pdf/with_profile_picture.pdf
```

## 路径规则（重点）

Typst 的相对路径是“相对于当前 `.typ` 文件”解析，不是相对于仓库根目录。

- 当前模板在 `typ/` 目录。
- 图片在 `images/` 目录。
- 所以在 `typ/with_profile_picture.typ` 中，图片应写为：

```typst
#image("../images/image.png", width: 26mm, height: auto)
```

如果你把头像改成 `images/my_photo.jpg`，则模板里应写：

```typst
#image("../images/my_photo.jpg", width: 26mm, height: auto)
```

## 自定义指南

### 1. 页面与字体
- 页面边距：`#set page(margin: (x: 15mm, y: 12mm))`
- 正文字号：`size: 10.5pt`
- 默认中文字体：`Noto Sans CJK SC`

当前模板默认：

```typst
#set text(font: ("Noto Sans CJK SC"), size: 10.5pt, lang: "zh")
```

### 2. 标题样式
- 标题颜色：`rgb("#4682b4")`
- 分割线粗细：`thickness: 0.5pt`

### 3. 头像大小
在 `with_profile_picture.typ` 里调整：

```typst
#image("../images/image.png", width: 26mm, height: auto)
```

- 增大头像：调大 `width`
- 保持比例：`height: auto`

## 常见问题

### 1) `unknown font family`
原因：系统没有安装模板设置的字体。

解决：
- 保持默认字体并安装 `Noto Sans CJK`；或
- 把 `#set text(font: (...))` 改成你系统已安装的字体。

示例：

```typst
#set text(font: ("Microsoft YaHei"), size: 10.5pt, lang: "zh")
```

### 2) `image not found`
原因：图片路径和当前 `.typ` 文件目录层级不匹配。

排查顺序：
1. 确认图片是否在 `images/`。
2. 确认模板是否在 `typ/`。
3. 确认模板内路径是否为 `../images/xxx`。

### 3) PDF 导出位置混乱
- 推荐统一用 CLI 导出到 `pdf/`，命令见上文。
- 若用插件导出，建议导出后统一移动到 `pdf/`。

## 建议工作流

1. 只在 `typ/` 内编辑模板。
2. 所有素材统一放在 `images/`。
3. 每次导出覆盖 `pdf/` 内同名文件。
4. 提交代码前检查：路径是否仍是 `../images/...`。
