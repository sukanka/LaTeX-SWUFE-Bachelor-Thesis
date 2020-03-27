# LaTeX-SWUFE-Bachelor-Thesis
LaTeX template for bachelor thesis of Southwestern University of Finance and Economics

西南财经大学本科毕业论文 LaTeX 模板
 ---

这是一个适用于西南财经大学本科毕业设计的 LaTeX 模版。本模板基于[HDU-Bachelor-Thesis](https://github.com/m13253/LaTeX-HDU-Bachelor-Thesis) 修改而来。

这个模板目前只支持 XeLaTeX 引擎，不支持 pdfLaTeX 和 LuaLaTeX 引擎。

欲使用这个模板，请将 swufethss-b.cls 复制到你的工程目录下，并指定以下之一

```
\documentclass{swufethss-b} % 检测版
\documentclass[final]{swufethss-b} % 完整版
```
为文档模板。
**注意： 检测版应去掉封面、目录、版权申明、致谢、后记和附录与封底。其中模板自动注释掉了封面、目录、版权申明、封底，你需要手动注释掉致谢、后记和附录。

为了能够正确地编译，需要有以下字体
```
SimSun 宋体
SimHei 黑体
FangSong 仿宋
KaiTi 楷体
STZhongsong 华文中宋
STFangsong  华文仿宋
```
Windows 系统已经自带了上述字体， Linux 系统请复制一份上述字体，放到 `/usr/share/fonts/win/` 下。

如果需要输出 Microsoft Word 格式以进行论文查重，可以尝试 Foxit PDF 转 Word（付费软件）。本模板的排版效果可被其识别。