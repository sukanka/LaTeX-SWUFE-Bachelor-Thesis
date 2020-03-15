% !TEX encoding = UTF-8 Unicode
% !TEX TS-program = xelatex
% !BIB program = biber

% MIT License
%
% Copyright (c) 2019 Star Brilliant
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.


% This template is modified from HDU-Bachelor-Thesis,
% see https://github.com/m13253/LaTeX-HDU-Bachelor-Thesis

% TODO LIST:
% 修改 footnote 格式
% 修改图表标题格式
% 优化首页排版
% 将封底改为LaTeX 原生制作











\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{swufethss-b}[2019/12/31 Bachelor thesis template for Southwestern Univeristy of Finance and Economics]

% 防止 fontspec 与 mathspec 冲突
%\PassOptionsToPackage{no-math}{fontspec}
% 启用 GB/T 7714-2015 参考文献格式
% 需要安装 biblatex-gb7714-2015
\PassOptionsToPackage{backend=biber,style=gb7714-2015}{biblatex}

% 调用基类 CTeX Article
\LoadClass[fontset=none,zihao=-4]{ctexart}
% 尺寸运算功能
\RequirePackage{calc}
% 设置题注格式
\RequirePackage{caption}
\captionsetup{font=small,labelfont=bf}
\captionsetup{font+=bf}


% 设置字体
\RequirePackage{fontspec}
% 设置脚注格式，每页清零
\RequirePackage[stable,perpage]{footmisc}
% 页边距设置
\RequirePackage[a4paper,top=3cm,bottom=3cm, left=3cm, right=3cm,headheight=10.5bp,headsep=1cm-10.5bp,footskip=1cm-2.953125bp]{geometry}
% 启用 PDF 超链接
\RequirePackage{hyperref}
% 小标题排版
\RequirePackage[pagestyles]{titlesec}
% 目录排版
\RequirePackage{titletoc}
% xeCJK 中文支持包
\RequirePackage{xeCJK}
% 插入封底pdf
\RequirePackage{pdfpages}

\RequirePackage{amsmath}
% 修改 tabular 默认字号small.
\RequirePackage{etoolbox}
\AtBeginEnvironment{tabular}{\small}

% 超链接格式设置
\hypersetup{unicode=true,linktoc=all,colorlinks,linkcolor=red,anchorcolor=blue,citecolor=green}



% 设置英文字体为 TeX Gyre 系列字体为 TeX Gyre Termes / Heros / Cursor，它们兼容 Times / Helvetica / Courier
% \setromanfont{texgyretermes-regular.otf}[BoldFont=texgyretermes-bold.otf,BoldItalicFont=texgyretermes-bolditalic.otf,ItalicFont=texgyretermes-italic.otf]
% \setsansfont{texgyreheros-regular.otf}[BoldFont=texgyreheros-bold.otf,BoldItalicFont=texgyreheros-bolditalic.otf,ItalicFont=texgyreheros-italic.otf]
% \setmonofont{texgyrecursor-regular.otf}[BoldFont=texgyrecursor-bold.otf,BoldItalicFont=texgyrecursor-bolditalic.otf,ItalicFont=texgyrecursor-italic.otf,Ligatures=NoCommon]
% 英文字体 Times New Roman.
% \setmainfont[
%     BoldFont=timesbd.ttf,
%     BoldItalicFont=timesbi.ttf,
%     ItalicFont=timesi.ttf
%     ]{times.ttf}
\RequirePackage{newtxtext}
%
\newfontfamily{\swufe@SimSun}{SimSun}[AutoFakeBold,AutoFakeSlant=0.25]
\newfontfamily{\swufe@SimHei}{SimHei}[AutoFakeBold,AutoFakeSlant=0.25]
\newfontfamily{\swufe@SimKai}{KaiTi}[AutoFakeBold,AutoFakeSlant=0.25]
\newfontfamily{\swufe@FangSong}{FangSong}[AutoFakeBold,AutoFakeSlant=0.25]
\newfontfamily{\swufe@STFangsong}{STFangsong}[AutoFakeBold,AutoFakeSlant=0.25]
\setCJKfamilyfont{zhsong}{SimSun}[AutoFakeBold,AutoFakeSlant=0.25]
\setCJKfamilyfont{zhhei}{SimHei}[AutoFakeBold,AutoFakeSlant=0.25]
\setCJKfamilyfont{zhfang}{FangSong}[AutoFakeBold,AutoFakeSlant=0.25]
\setCJKfamilyfont{zhkai}{KaiTi}[AutoFakeBold,AutoFakeSlant=0.25]
\setCJKfamilyfont{STZhongsong}{STZhongsong}[AutoFakeBold,ItalicFont={STZhongsong}]
\setCJKfamilyfont{hwzhfang}{STFangsong}[AutoFakeBold,ItalicFont={STFangsong}]

\setCJKromanfont{SimSun}[AutoFakeBold,ItalicFont={FangSong}]
\setCJKsansfont{SimHei}[AutoFakeBold,ItalicFont={KaiTi}]
\setCJKmonofont{FangSong}[AutoFakeBold,ItalicFont={FangSong}]



% 关掉 CTeX 的 1.3 倍行距
\linespread{1}
% 关掉 0pt-1pt 的弹性段间距
\setlength{\parskip}{0pt}

% 设置各种字号
\renewcommand{\tiny}{\fontsize{6.5bp}{8.328125bp}\selectfont}
\renewcommand{\scriptsize}{\fontsize{7.5bp}{9.609375bp}\selectfont}
\renewcommand{\footnotesize}{\fontsize{9bp}{11.53125bp}\selectfont}
\renewcommand{\small}{\fontsize{10.5bp}{13.453125bp}\selectfont}
\renewcommand{\normalsize}{\fontsize{12bp}{20bp}\selectfont}
\renewcommand{\large}{\fontsize{15bp}{20bp}\selectfont}
\renewcommand{\Large}{\fontsize{18bp}{23.0625bp}\selectfont}
\renewcommand{\LARGE}{\fontsize{22bp}{28.1875bp}\selectfont}
\renewcommand{\huge}{\fontsize{24bp}{30.75bp}\selectfont}
\renewcommand{\Huge}{\fontsize{26bp}{33.3125bp}\selectfont}

% 设置题注格式

% 设置页眉页脚
% 可以 \swufeheader{文字} 来改变页眉内容
% \newcommand{\swufe@header}{西南财经大学本科毕业论文}
% \newcommand{\swufeheader}[1]{\renewcommand{\swufe@header}{#1}}
% 使用 \pagestyle{swufe-bachelor} 来调用这个格式
\newpagestyle{swufe-bachelor}[\fontsize{9bp}{13.453125bp}\selectfont]{%
    %\sethead{}{\swufe@header{}}{}%
    %\renewcommand{\makeheadrule}{\rule[-4.75bp]{\linewidth}{.75bp}}%
    \setfoot{}{\thepage}{}%
}
% 使用 \pagestyle{swufe-bachelor-empty} 来关闭页码
\newpagestyle{swufe-bachelor-empty}[\fontsize{9bp}{13.453125bp}\selectfont]{%
    %\sethead{}{\swufe@header{}}{}%
    %\renewcommand{\makeheadrule}{\rule[-4.75bp]{\linewidth}{.75bp}}%
    \setfoot{}{}{}%
}

% 定义 \unnumberedsection 命令，用以方便地加入一个无标号的小标题
\newcommand{\unnumberedsection}[1]{\phantomsection\addcontentsline{toc}{section}{#1}\section*}

% 设置一、二、三级小标题格式
\titleformat{\section}{\filcenter\CJKfamily{STZhongsong}\fontsize{22bp}{33bp}\selectfont}{\thesection}{1em}{}
\titlespacing{\section}{0bp}{66bp}{44bp}
\titleformat{\subsection}{\sffamily\CJKfamily{zhhei}\fontsize{15bp}{22.5bp}\selectfont}{\thesubsection}{1em}{}
\titlespacing{\subsection}{0bp}{15bp}{15bp}
\titleformat{\subsubsection}{\sffamily\CJKfamily{zhhei}\fontsize{12bp}{18bp}\selectfont}{\thesubsubsection}{1em}{}
\titlespacing{\subsubsection}{0bp}{12bp}{12bp}

% \RequirePackage{scrextend}
% \deffootnote[1.5em]{1.5em}{1em}{\fontsize{9bp}{9bp}\thefootnotemark.\space}

% 设置目录格式
\renewcommand{\contentsname}{\CJKfamily{STZhongsong}\fontsize{22bp}{33bp} \bfseries 目\hspace{2em}录}
\contentsmargin{0bp}
\titlecontents{section}[0em]{}{\CJKfamily{zhsong}\fontsize{12bp}{12bp}\bfseries \thecontentslabel\hspace{1em}}{}{\titlerule*[0.25em]{.}\thecontentspage}
\titlecontents{subsection}[2em]{}{\CJKfamily{zhsong}\fontsize{12bp}{12bp}\thecontentslabel\hspace{1em}}{}{\titlerule*[0.25em]{.}\thecontentspage}
\titlecontents{subsubsection}[4em]{}{\CJKfamily{zhsong}\fontsize{12bp}{12bp}\thecontentslabel\hspace{1em}}{}{\titlerule*[0.25em]{.}\thecontentspage}

% 设置参考文献格式
\newlength{\bibitemsep}
\AtBeginDocument{\setlength{\bibitemsep}{0pt}}

% 设置 \autoref 格式
\def\figureautorefname{图}%
\def\tableautorefname{表}%
\def\partautorefname{篇}%
\def\appendixautorefname{附录}%
\def\equationautorefname{公式}%
\def\Itemautorefname{项目}%
\def\chapterautorefname{章}%
\def\sectionautorefname{节}%
\def\subsectionautorefname{小节}%
\def\subsubsectionautorefname{子小节}%
\def\paragraphautorefname{段落}%
\def\subparagraphautorefname{子段落}%
\def\Hfootnoteautorefname{脚注}%
\def\AMSautorefname{公式}%
\def\theoremautorefname{定理}%
\def\pageautorefname{页面}%

% PDF 元数据设置
\AtBeginDocument{\hypersetup{pdfinfo={
    Author={\@author},
    Title={\@title},
    CreationDate={D:20000101000000} % 随手抹除文件创建时间
}}}

% 生成封面，可以配置的参数包括：
% \title{题目}
% \author{学生姓名}
% \swufeyear{届次（年）}
% \swufeschool{学院}
% \swufemajor{专业}
% \swufestudentid{学号}
% \swufeadviser{指导教师}
% \swufegrade{成绩}
% \swufefinishdate{完成日期（年月）}
% \swufesigndate{诚信承诺签署日期（年月日）}
\newcommand{\swufe@year}{\the\year{}}
\newcommand{\swufe@school}{}
\newcommand{\swufe@major}{}
\newcommand{\swufe@studentid}{}
\newcommand{\swufe@adviser}{}
\newcommand{\swufe@grade}{}
\newcommand{\swufe@finishdate}{\the\year{} 年 \the\month{} 月}
\newcommand{\swufe@signdate}{\the\year{} 年 \the\month{} 月 \the\day{} 日}
\newcommand{\swufeyear}[1]{\renewcommand{\swufe@year}{#1}}
\newcommand{\swufeschool}[1]{\renewcommand{\swufe@school}{#1}}
\newcommand{\swufemajor}[1]{\renewcommand{\swufe@major}{#1}}
\newcommand{\swufestudentid}[1]{\renewcommand{\swufe@studentid}{#1}}
\newcommand{\swufeadviser}[1]{\renewcommand{\swufe@adviser}{#1}}
\newcommand{\swufegrade}[1]{\renewcommand{\swufe@grade}{#1}}
\newcommand{\swufefinishdate}[1]{\renewcommand{\swufe@finishdate}{#1}}
\newcommand{\swufesigndate}[1]{\renewcommand{\swufe@signdate}{#1}}

\newenvironment{abstractzh}[1][摘要]
{\begin{center}
    \filcenter\CJKfamily{STZhongsong}\fontsize{22bp}{33bp}\selectfont 摘要
\end{center}
\par \begin{bfseries}

}{\end{bfseries}\clearpage}
\newcommand{\keywordszh}[1]{\par 关键词： #1}

\newenvironment{abstracten}[1][ABSTRACT]
{\begin{center}
    \filcenter\CJKfamily{STZhongsong}\fontsize{22bp}{33bp}\selectfont ABSTRACT
\end{center}
\par \begin{bfseries}
}{\end{bfseries}\clearpage}
\newcommand{\keywordsen}[1]{\par\noindent Keywords: #1}

\renewcommand{\maketitle}{%
    \clearpage\thispagestyle{empty}%
    \par\noindent\parbox[t]{21cm}{%
        \vspace{\topskip}\vspace*{-\topskip}%
        \swufe@STFangsong\CJKfamily{hwzhfang}\fontsize{16bp}{0bp}\selectfont%
       \parbox[t][90bp][t]{323.5bp}{\centering\includegraphics[width=323.5bp,height=90bp]{swufe-Logo/transparent.png}}%
        
        \vspace{25.25bp}\hspace{23bp}\parbox[t][36bp][t]{13cm}{\centering\CJKfamily{zhhei}\fontsize{36bp}{51.25bp}\bfseries {\swufe@year}\hspace{0.25em}届}

        \vspace{5.75bp}\hspace{23bp}\parbox[t][36bp][t]{360.5bp}{\centering\CJKfamily{zhhei}\fontsize{36bp}{51.25bp}\selectfont\bfseries 本科毕业论文（设计）}%
        
%
        \vspace{60.625bp}\hspace*{23bp}\parbox[t][16bp][t]{80bp}{\CJKfamily{zhfang}\fontsize{16bp}{19.21875bp}\selectfont\bfseries 论\hspace{\fill}文\hspace{\fill}题\hspace{\fill}目：}\hspace{12bp}\parbox[b][16bp][b]{262.5bp}{\centering\fontsize{16bp}{19.21875bp}\selectfont{\@title}}%

        \hspace*{103bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{5.75bp}\hspace*{23bp}\parbox[t][16bp][t]{80bp}{\CJKfamily{zhfang}\fontsize{16bp}{19.21875bp}\selectfont\bfseries 学\hspace{\fill}生\hspace{\fill}姓\hspace{\fill}名：}
        %
        \hspace{12bp}\parbox[b][16bp][b]{262.5bp}{\centering\fontsize{16bp}{19.21875bp}\selectfont{\@author}}%

        \vspace{5.75bp}\hspace*{103bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{5.75bp}\hspace*{23bp}\parbox[t][16bp][t]{80bp}{\CJKfamily{zhfang}\fontsize{16bp}{19.21875bp}\selectfont\bfseries 所\hspace{\fill}在\hspace{\fill}学\hspace{\fill}院：}
        %
        \hspace{12bp}\parbox[b][16bp][b]{262.5bp}{\centering\fontsize{16bp}{19.21875bp}\selectfont{\swufe@school}}%

        \vspace{5.5bp}\hspace*{103bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{5.75bp}\hspace*{23bp}\parbox[t][16bp][t]{80bp}{\CJKfamily{zhfang}\fontsize{16bp}{19.21875bp}\selectfont\bfseries 专\hspace{\fill}业：}
        %
        \hspace{12bp}\parbox[b][16bp][b]{262.5bp}{\centering\fontsize{16bp}{19.21875bp}\selectfont{\swufe@major}}%

        \vspace{5.625bp}\hspace*{103bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{5.75bp}\hspace*{23bp}\parbox[t][16bp][t]{80bp}{\CJKfamily{zhfang}\fontsize{16bp}{19.21875bp}\selectfont\bfseries 学\hspace{\fill}号：}
        %
        \hspace{12bp}\parbox[b][16bp][b]{262.5bp}{\centering\fontsize{16bp}{19.21875bp}\selectfont{\swufe@studentid}}%

        \vspace{5.5bp}\hspace*{103bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{5.75bp}\hspace*{23bp}\parbox[t][16bp][t]{80bp}{\CJKfamily{zhfang}\fontsize{16bp}{19.21875bp}\selectfont\bfseries 指\hspace{\fill}导\hspace{\fill}教\hspace{\fill}师：}
        %
        \hspace{12bp}\parbox[b][16bp][b]{262.5bp}{\centering\fontsize{16bp}{19.21875bp}\selectfont{\swufe@adviser}}%

        \vspace{5.5bp}\hspace*{103bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{5.75bp}\hspace*{23bp}\parbox[t][16bp][t]{80bp}{\CJKfamily{zhfang}\fontsize{16bp}{19.21875bp}\selectfont\bfseries 成\hspace{\fill}绩：}
        %
        \hspace{12bp}\parbox[b][16bp][b]{262.5bp}{\centering\fontsize{16bp}{19.21875bp}\selectfont{\swufe@grade}}%

        \vspace{5.5bp}\hspace*{103bp}\rule[0pt]{262.5bp}{0.5bp}%


        
        \vspace{100bp}\hspace{103bp}\parbox[b][16bp][b]{262.5bp}{\centering\fontsize{16bp}{19.21875bp}\selectfont{\swufe@finishdate}}%

        %\vspace{5.5bp}\hspace*{95bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{\fill}%
    }%
    %
    %
    % 承诺页
    \clearpage\thispagestyle{empty}%
    \par\noindent\parbox[t]{15cm}{
        \vspace{\topskip}\vspace*{-\topskip}%
        \swufe@SimSun\CJKfamily{zhsong}\fontsize{12bp}{0bp}\selectfont%

        \vspace*{85.25bp}\parbox[t][18bp][t]{15cm}{\centering\CJKfamily{STZhongsong}\fontsize{18bp}{23.0625bp}\selectfont\bfseries 西南财经大学}%

        \parbox[t][18bp][t]{15cm}{\centering\CJKfamily{STZhongsong}\fontsize{18bp}{23.0625bp}\selectfont\bfseries 本科毕业论文原创性及知识产权声明}%

        \vspace{20.625bp}\parbox[t]{15cm}{\sffamily\CJKfamily{STZhongsong}\fontsize{12bp}{15bp}\selectfont\leavevmode{\parindent=2em\indent}本人郑重声明：所呈交的毕业论文是本人在导师的指导下取得的成果，论文写作严格遵循学术规范。对本论文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。因本毕业论文引起的法律结果完全由本人承担。}%

        \vspace{9bp}\parbox[t]{15cm}{\sffamily\CJKfamily{STZhongsong}\fontsize{12bp}{15bp}\selectfont\leavevmode{\parindent=2em\indent}本毕业论文成果归西南财经大学所有。}%

        \vspace{40.625bp}\parbox[t]{15cm}{\sffamily\CJKfamily{STZhongsong}\fontsize{12bp}{15bp}\selectfont\leavevmode{\parindent=2em\indent}特此声明}%

        \vspace{180bp}
        \parbox[t][12bp][t]{\textwidth}{\sffamily\CJKfamily{zhsong}\fontsize{12bp}{35bp}\selectfont\hspace*{300bp}\bfseries 毕业论文作者签名：}%

        \vspace{9bp}\parbox[t][12bp][t]{\textwidth}{\sffamily\CJKfamily{zhsong}\fontsize{12bp}{35bp}\selectfont\hspace*{350bp}\bfseries 作者专业：}%

        \vspace{9bp}\parbox[t][12bp][t]{\textwidth}{\sffamily\CJKfamily{zhsong}\fontsize{12bp}{35bp}\selectfont\hspace*{350bp}\bfseries 作者学号：}%

        \vspace{9bp}
        \parbox[t][12bp][t]{\textwidth}{\swufe@SimSun\CJKfamily{zhsong}\fontsize{12bp}{35bp}\selectfont\hspace*{290bp}\bfseries{\swufe@signdate}}%

        \vspace{\fill}%
    }%
    \clearpage%
}

% 启用页眉页脚
\AtBeginDocument{\pagestyle{swufe-bachelor}}

\AtEndDocument{\includepdf{swufe-Logo/lastpage.pdf}}
