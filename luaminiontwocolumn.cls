\ProvidesClass{luaminiontwocolumn}

% language options
\DeclareOption{english}{\input{english}}
\DeclareOption{german}{\input{german}}
\DeclareOption{twoside}{\PassOptionsToClass{twoside}{scrartcl}}

\ProcessOptions\relax

% KOMA-Script
\LoadClass[DIV=calc,twocolumn,10pt,parskip,a4paper]{scrartcl}
\usepackage[ilines,headsepline,automark]{scrpage2}
\cfoot{\pagemark}

% load language specific packages
\usepackage{hyphsubst}
\input{language}

% math packages
\input{math}

% lualatex encoding
\input{encoding}

% colour
\usepackage[natural, svgnames, rgb, cmyk, table, x11names]{xcolor}
\input{colour}

% other packages
\input{packages}

% bibliography files
\input{bibliography}

% hyperlinks
\usepackage{url}
\usepackage[colorlinks=true, linkcolor=DarkRed, urlcolor=DarkRed,
citecolor=DarkRed, filecolor=DarkRed, plainpages=false,
pdfpagelabels, bookmarksnumbered]{hyperref}

% fonts
% \setmainfont[Ligatures=TeX,SmallCapsFeatures={LetterSpace=6},Numbers=OldStyle]{Minion Pro}
% \setmainfont[Ligatures=TeX,SmallCapsFeatures={LetterSpace=6}]{Minion Pro}
\setmainfont[Ligatures=TeX]{Minion Pro}
\setsansfont[Ligatures=TeX,Scale=MatchUppercase]{Cronos Pro}
\setmonofont[Scale=MatchLowercase]{Source Code Pro}
\setmathfont[
Script       = Math , %% evtl. unnötig (?)
]{Minion Math}
\setmathfont[range={\mathbfup->\mathup}]{Minion Pro Bold}
\setmathfont[range={\mathbfit->\mathup}]{Minion Pro Bold Italic}
\setmathfont[range={\mathcal,\mathbfcal},StylisticSet=1]{XITS Math}
\newcommand{\minioncal}[1]{%
  \text{\fontspec[Contextuals=Swash]{Minion Pro Italic}#1}}
% Bib Names in SmallCaps
\AtBeginBibliography{%
  \renewcommand*{\mkbibnamelast}[1]{\textsc{#1}}%
  \renewcommand*{\mkbibnameprefix}[1]{\textsc{#1}}%
}

% captions in small caps
% \addtokomafont{caption}{\itshape}
\addtokomafont{captionlabel}{\scshape}

% adjust numbers
\usepackage[toc,eqno,enum,bib,lineno]{tabfigures}

% re-calculate div
\KOMAoptions{DIV=last}

% class specific
\usepackage{paralist}

% import all texMacros
\input{texMacros}

\setlength\delimitershortfall{-1pt}

\title{}

% load cleveref last
\usepackage{cleveref}