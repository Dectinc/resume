\ProvidesClass{professional-cv-cn}[2017/02/05 v1.6.1 Awesome Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}


\RequirePackage[bottom=0cm,nohead,nofoot]{geometry}
\RequirePackage{hyperref}


%%% modified by Karol Kozioł for ShareLaTex use
\RequirePackage[quiet]{fontspec}
\RequirePackage[noindent]{ctex}
% \RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}
\RequirePackage{unicode-math}

\newfontfamily\bodyfont
[BoldFont=texgyreheros-bold.otf,
ItalicFont=texgyreheros-italic.otf,
BoldItalicFont=texgyreheros-bolditalic.otf]
{texgyreheros-regular.otf}
\newfontfamily\thinfont[]{SourceSansPro-Light.otf}
\newfontfamily\headingfont[]{Hiragino Sans GB W3}
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[
SmallCapsFont = Fontin-SmallCaps.otf,
BoldFont = Fontin-Bold.otf,
ItalicFont = Fontin-Italic.otf
]
{Fontin.otf}
\setmathfont{texgyreheros-regular.otf}
\setCJKmainfont[BoldFont={Hiragino Sans GB W6}]{Hiragino Sans GB W3}
%%%


\newenvironment{entrylist}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}r|p{12cm}}
}{%
  \end{tabular*}
}
\newcommand{\entry}[4]{%
  \textsc{#1} & \parbox[t]{11.7cm}{%
    \textbf{#2}  %
    \hfill%
    {\footnotesize #3}
     \\%
    \small{#4}\vspace{\parsep}%
  }\\}


\newcommand{\justentry}[3]{%
  \textsc{#1} & \parbox[t]{11.7cm}{%
    \textbf{#2}  %
    \hfill%
    {\footnotesize #3} 
    \vspace{\parsep}%
  }\\}

\newcommand{\internentry}[4]{%
  \textsc{#1} & \parbox[t]{11.7cm}{%
    \textbf{#2} \small #4
  \vspace{\parsep}%
  }\\}
