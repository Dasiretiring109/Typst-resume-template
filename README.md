# Typst 中文简历模板库（含 12 个参考项目仿制版）

这个仓库现在包含两类模板：
- 通用模板（原有）
- 参考项目仿制模板（按你给的链接逐个做了一份）

## 目录结构

```text
Typst-resume-template/
├─ typ/      模板文件（直接改这里）
├─ images/   头像图片（可选）
├─ pdf/      导出的 PDF（建议输出到这里）
└─ README.md
```

## 模板总览

### A. 通用模板（原有）

- `typ/no_profile_picture.typ`
- `typ/with_profile_picture.typ`
- `typ/resume_classic_with_photo.typ`
- `typ/sidebar_tech_blue.typ`
- `typ/minimal_ats.typ`
- `typ/color_cards.typ`
- `typ/newspaper_two_column.typ`
- `typ/ribbon_section_blocks.typ`
- `typ/bracket_index_titles.typ`
- `typ/split_banner_titles.typ`
- `typ/side_label_titles.typ`

### B. 参考项目仿制模板（新增 12 份）

- `typ/ref_golixp_resume_zh_cn.typ`
  - 参考：<https://typst.app/universe/package/golixp-resume-zh-cn/>
  - 特征：中文模块化、时间线/信息块风格

- `typ/ref_typst_project_rw1SLr0IIZZnCrkrsypRQF.typ`
  - 参考：<https://typst.app/project/rw1SLr0IIZZnCrkrsypRQF>
  - 特征：卡片化与双色分区风格（按公开预览思路做的可编辑版本）

- `typ/ref_uniquecv_typst.typ`
  - 参考：<https://github.com/gaoachao/uniquecv-typst>
  - 特征：蓝色标题线、中文学术简历风格

- `typ/ref_typst_cv_miku.typ`
  - 参考：<https://github.com/ice-kylin/typst-cv-miku>
  - 特征：轻量图标/emoji 分段、年轻化布局

- `typ/ref_alta_typst.typ`
  - 参考：<https://github.com/GeorgeHoneywood/alta-typst>
  - 特征：双栏排版、技能评分点

- `typ/ref_attractive_typst_resume.typ`
  - 参考：<https://github.com/Harkunwar/attractive-typst-resume>
  - 特征：彩色标题块 + 左侧栏

- `typ/ref_moderncv_typst.typ`
  - 参考：<https://github.com/giovanniberti/moderncv.typst>
  - 特征：左侧日期盒 + 右侧正文

- `typ/ref_resume_typ.typ`
  - 参考：<https://github.com/wusyong/resume.typ>
  - 特征：极简线条、Small Caps 标题

- `typ/ref_chicv.typ`
  - 参考：<https://github.com/skyzh/chicv>
  - 特征：简洁单栏 + 分段横线

- `typ/ref_bamboovir_typst_resume_template.typ`
  - 参考：<https://github.com/bamboovir/typst-resume-template>
  - 特征：大号姓名标题 + 线性章节

- `typ/ref_brilliant_cv.typ`
  - 参考：<https://github.com/yunanwg/brilliant-CV>
  - 特征：现代化模块、信息标签风格

- `typ/ref_chinese_resume_in_typst.typ`
  - 参考：<https://github.com/OrangeX4/Chinese-Resume-in-Typst>
  - 特征：中文优先、侧栏与分段组件

## 快速使用

1. 打开任意 `typ/*.typ` 文件。
2. 替换姓名、电话、邮箱、教育/项目经历。
3. 导出 PDF。

示例：

```bash
typst compile typ/ref_uniquecv_typst.typ pdf/ref_uniquecv_typst.pdf
```

批量编译所有仿制模板：

```bash
mkdir -p pdf
for f in typ/ref_*.typ; do
  name=$(basename "${f%.typ}")
  typst compile "$f" "pdf/${name}.pdf"
done
```

## 依赖安装

### 1) Typst CLI

macOS（Homebrew）：

```bash
brew install typst
```

跨平台（已安装 Rust/Cargo）：

```bash
cargo install --locked typst-cli
```

VS Code 插件：`Tinymist Typst`

### 2) 字体下载与安装（命令版）

> 下面命令覆盖了这些参考模板常见字体：
> Noto/Source Han CJK、IBM Plex、Roboto、Source Sans、Mulish、Nerd Font Symbols。

下载到项目内 `fonts/`：

```bash
mkdir -p fonts && cd fonts

curl -L -o source-han-sans-sc.zip \
  https://github.com/adobe-fonts/source-han-sans/releases/latest/download/SourceHanSansSC.zip

curl -L -o source-han-serif-cn.zip \
  https://github.com/adobe-fonts/source-han-serif/releases/latest/download/12_SourceHanSerifCN.zip

curl -L -o nerd-font-symbols.zip \
  https://github.com/ryanoasis/nerd-fonts/releases/latest/download/NerdFontsSymbolsOnly.zip

curl -L -o roboto.zip "https://fonts.google.com/download?family=Roboto"
curl -L -o source-sans-3.zip "https://fonts.google.com/download?family=Source%20Sans%203"
curl -L -o source-sans-pro.zip "https://fonts.google.com/download?family=Source%20Sans%20Pro"
curl -L -o mulish.zip "https://fonts.google.com/download?family=Mulish"
curl -L -o ibm-plex-sans.zip "https://fonts.google.com/download?family=IBM%20Plex%20Sans"
curl -L -o ibm-plex-serif.zip "https://fonts.google.com/download?family=IBM%20Plex%20Serif"
curl -L -o ibm-plex-mono.zip "https://fonts.google.com/download?family=IBM%20Plex%20Mono"
```

安装到 Linux 用户字体目录（可选）：

```bash
mkdir -p ~/.local/share/fonts/typst-resume
for z in fonts/*.zip; do
  unzip -o "$z" -d ~/.local/share/fonts/typst-resume
done
fc-cache -f -v
```

### 3) `typst-cv-miku` 里提到的 `kpfonts`（可选）

如果你要尽量贴近该项目原效果：

```bash
# 需要 TeX Live
tlmgr install kpfonts
```

## 常见问题

### 1. `unknown font family`

系统没装对应字体。先执行上面的字体下载与安装命令，或者把模板中的字体改成你机器已有字体。

### 2. `image not found`

检查头像路径与文件名是否一致，建议使用 `images/image.png`。

### 3. 看不到预览

在 VS Code 执行 `Typst: Open Preview`。

## 说明

- 新增的 12 个 `ref_*.typ` 是“风格仿制版”，目标是便于你在本仓库统一维护与二次修改。
- 为了减少环境差异，模板都设置了字体回退列表；若你已安装对应字体，显示会更接近参考项目。
- 如果未安装推荐字体，`typst compile` 可能给出 `unknown font family` warning，但模板仍可正常编译。
