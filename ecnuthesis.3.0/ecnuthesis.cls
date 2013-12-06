%%
%% This is file `ecnuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ecnuthesis.dtx  (with options: `ecnuthesis')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2012 by Deng Pei <vvcoder@gmail.com>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.3c of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3c or later is part of all distributions of LaTeX version
%% 2008/05/04 or later.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ecnuthesis}
    [2012/05/26 v3.0 The East China Normal University thesis LaTeX template]
\LoadClassWithOptions{article}
\RequirePackage{xcolor}                                     % 色彩支持宏包
\RequirePackage{hyperref}                                   % 创建超链接和目录宏包
\RequirePackage{amsmath}                                    % 数学符号宏包
\RequirePackage{amsfonts}                                   % 数学字体宏包
\RequirePackage{fontspec}                                   % 设置字体宏包
\RequirePackage[slantfont,boldfont]{xeCJK}                  % XeLaTeX的CJK支持宏包
\RequirePackage[toc,page,title,titletoc,header]{appendix}   % 附录支持宏包
\RequirePackage{fancyhdr}                                   % 页眉页脚支持宏包
\RequirePackage{graphicx}                                   % 插图支持
\RequirePackage{setspace}                                   % 行距支持宏包
\RequirePackage{ccaption}                                   % 中英文标题支持宏包
\RequirePackage{longtable}                                  % 长表格环境支持宏包
\RequirePackage{listings}                                   % 源代码显示支持宏包
\RequirePackage[titles,subfigure]{tocloft}                  % 目录和页码点号支持宏包
\RequirePackage{subfigure}                                  % 并排插图支持宏包
\RequirePackage{multirow}                                   % 合并表格行列支持
\RequirePackage{ulem}                                       % 删除线支持
\RequirePackage{geometry}                                   % 页面边距调整支持
\RequirePackage{calc}                                       % 计算支持
\hypersetup{%
    pdfencoding=auto, % 自动确定编码
    pdfpagelayout={SinglePage}, % 初始单页视图
    bookmarksnumbered={true}, % 书签编号
    bookmarksopen={false}, % 自动展开书签
    pdfborder={0 0 0}} % 边框
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\setlength{\parindent}{2.5em}
\newfontfamily\fontcourier{Courier New} % courier，我觉得最漂亮的英文字体
\newfontfamily\fontkai{KaiTi} % 楷体，我觉得最漂亮的中文字体
\newfontfamily\fontsong{NSimSun} % 宋体，很难看但是很常用的中文字体
\newfontfamily\fonthei{SimHei} % 黑体
\setmainfont{Times New Roman}   % 默认字体
\setmonofont{Times New Roman}   % 默认等宽字体
\setsansfont{Arial}             % 英文无衬线字体
\setCJKmainfont{NSimSun}        % CJK默认字体
\setCJKmonofont{NSimSun}        % CJK等宽字体
\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}
\pagestyle{fancy}
\fancyhead[L]{{\color{gray}{华东师范大学\@deg 学位论文}}}
\fancyhead[R]{{\color{gray}{\@titzh}}}
\renewcommand{\headrule}{{\color{gray}{\hrule}}}
\setlength{\abovelegendskip}{\baselineskip}
\setlength{\belowlegendskip}{\baselineskip}
\newcommand{\urcite}[1]{%
    \textsuperscript{%
        \textsuperscript{\cite{#1}}}}%
\newcommand{\thesistitle}[2]{% 标题页标题
    \def\@titzh{#1}     % 中文标题
    \def\@titen{#2}}    % 英文标题
\newcommand{\thesisdate}[1]{% 标题页日期
    \def\@dat{#1}}      % 标题页日期
\newcommand{\thesisdegree}[1]{% 标题页学位
    \def\@deg{#1}}      % 标题页学位
\newcommand{\thesisstudent}[5]{% 标题页学生信息
    \def\@stuname{#1}   % 学生姓名
    \def\@stuid{#2}     % 学生学号
    \def\@stucls{#3}    % 学生班级
    \def\@stuins{#4}    % 学生学院
    \def\@stumaj{#5}}   % 学生专业
\newcommand{\thesisinstructor}[2]{% 标题页导师信息
    \def\@insname{#1}   % 导师姓名
    \def\@inslevel{#2}} % 导师职称
\newcommand{\thesistitlepage}{
    \begin{titlepage}
        \fbox{\begin{minipage}[s]{\widthof{华东师范大学\@stuins}}
            华东师范大学\@stuins\@stumaj\@deg 学位论文
            \end{minipage}}
        \begin{center}
            \vspace{30mm}
            \huge
            \textbf{\@titzh}\par
            \textbf{\@titen}\par
            \vspace{40mm}
            \Large
            \textbf{姓 \qquad 名} \underline{\hfill \makebox[80mm]{\@stuname} \hfill} \par
            \vspace{5mm}
            \textbf{学 \qquad 号} \underline{\hfill \makebox[80mm]{\@stuid} \hfill} \par
            \vspace{5mm}
            \textbf{班 \qquad 级} \underline{\hfill \makebox[80mm]{\@stucls} \hfill} \par
            \vspace{5mm}
            \textbf{导 \qquad 师} \underline{\hfill \makebox[25mm]{\@insname} \hfill} \quad \textbf{职 \qquad 称} \underline{\hfill \makebox[25mm]{\@inslevel} \hfill} \par
            \vspace{5mm}
            \textbf{日 \qquad 期} \underline{\hfill \makebox[80mm]{\@dat} \hfill} \par
        \end{center}
    \end{titlepage}}
\newcommand{\thesiscontents}{%
    \renewcommand{\contentsname}{\centerline{\huge\textbf{目~~~~录}}}%
    \thispagestyle{empty}%
    \tableofcontents}%
\newenvironment{thesisabstractchinese}{%
    \newpage%
    \renewcommand{\abstractname}{\centerline{\huge\textbf{摘~~~~要}}}%
    \begin{abstract}\begin{spacing}{1.5}}{\end{spacing}\end{abstract}}%
\newenvironment{thesisabstractenglish}{%
    \newpage%
    \renewcommand{\abstractname}{\centerline{\huge\textbf{Abstract}}}%
    \begin{abstract}\begin{spacing}{1.5}}{\end{spacing}\end{abstract}\newpage}%
\renewcommand{\tablename}{表}
\newcommand{\thesistablecaption}[4]{\bicaption[#1]{#2}{#3}{Table}{#4}\vspace{\baselineskip}}
\newcommand{\thesistableindex}{%
    \newpage%
    \renewcommand{\listtablename}{\centerline{\huge\textbf{表~~格~~列~~表}}}
    \listoftables%
    \addcontentsline{toc}{section}{表格列表}}%
\renewcommand{\figurename}{图}
\newcommand{\thesisfigurecaption}[4]{\vspace{\baselineskip}\bicaption[#1]{#2}{#3}{Figure}{#4}}
\newcommand{\thesisfigureindex}{%
    \newpage%
    \renewcommand{\listfigurename}{\centerline{\huge\textbf{插~~图~~列~~表}}}
    \listoffigures%
    \addcontentsline{toc}{section}{插图列表}}%
\newcommand{\thesisfigureandtableindex}{%
    \newpage%
    \renewcommand{\listfigurename}{\centerline{\huge\textbf{插~~图~~列~~表}}}
    \listoffigures%
    \renewcommand{\listtablename}{\centerline{\huge\textbf{表~~格~~列~~表}}}
    \listoftables%
    \addcontentsline{toc}{section}{图表列表}}%
\newenvironment{thesisthebibliography}{%
    \newpage%
    \renewcommand{\refname}{\centerline{\huge\textbf{参~~考~~文~~献}}}%
    \begin{thebibliography}{64}}%
    {\end{thebibliography}%
    %\addcontentsline{toc}{section}{参考文献 \dotfill}}% 可能会导致目录溢出，所以不用这个。
    \addcontentsline{toc}{section}{参考文献}}%
\newenvironment{thesisappendix}{%
    \newpage%
    \renewcommand{\appendixname}{}%
    %\renewcommand{\appendixtocname}{附录 \dotfill}% 可能会导致目录溢出，所以不用这个。
    \renewcommand{\appendixtocname}{附录}%
    \renewcommand{\appendixpagename}{\centerline{\huge\textbf{附~~~~录}}}%
    \begin{appendices}}%
    {\end{appendices}}%
\endinput
%%
%% End of file `ecnuthesis.cls'.
