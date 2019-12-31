# LaTeX-SWUFE-Bachelor-Thesis
LaTeX template for bachelor thesis of Southwestern University of Finance and Economics

西南财经大学本科毕业论文 LaTeX 模板
 ---

这是一个适用于西南财经大学本科毕业设计的 LaTeX 模版。本模板基于[HDU-Bachelor-Thesis](https://github.com/m13253/LaTeX-HDU-Bachelor-Thesis) 修改而来。

这个模板目前只支持 XeLaTeX 引擎，不支持 pdfLaTeX 和 LuaLaTeX 引擎。

这个模板包含一个内建的封面，可以使用
```
\maketitle
```
命令来调用内建的封面。也可以使用 Microsoft Word 制作封面，导出 PDF 后使用
```
\includepdf[pages={-}]{封面.pdf}
```
命令来插入封面。

欲使用这个模板，请将 swufethss-b.cls 复制到你的工程目录下，并指定

```
\documentclass{swufethss-b}
```
为文档模板。

如果需要输出 Microsoft Word 格式以进行论文查重，可以尝试 Foxit PDF 转 Word（付费软件）。本模板的排版效果可被其识别。