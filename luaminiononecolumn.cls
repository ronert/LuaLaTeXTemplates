\ProvidesClass{luaminiononecolumn}

% language options
\DeclareOption{english}{\input{english}}
\DeclareOption{german}{\input{german}}

\ProcessOptions\relax

% KOMA-Script
%\LoadClass[paper=a4,onecolumn,DIV=calc,10pt,parskip]{scrartcl}
\LoadClass[a4paper,11pt,parskip]{scrartcl}
\usepackage[ilines,headsepline,automark]{scrpage2}
\cfoot{\pagemark}

% load language specific packages
\input{language}

% math packages
\input{math}

% xelatex encoding
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
%\setmainfont[Ligatures=TeX,SmallCapsFeatures={LetterSpace=6},Numbers=OldStyle]{Minion Pro}
\setmainfont[Ligatures=TeX,SmallCapsFeatures={LetterSpace=6}]{Minion Pro}
\setsansfont[Ligatures=TeX,Scale=MatchUppercase]{Myriad Pro}
\setmonofont[Scale=MatchLowercase]{Droid Sans Mono}
 \setmathfont[
    Script       = Math , %% evtl. unnötig (?)
    ]{Minion Math}
  \setmathfont[range={\mathbfup->\mathup}]{Minion Pro Bold}
  \setmathfont[range={\mathbfit->\mathup}]{Minion Pro Bold Italic}

% Bib Names in SmallCaps
\AtBeginBibliography{% 
  \renewcommand*{\mkbibnamelast}[1]{\textsc{#1}}%
  \renewcommand*{\mkbibnameprefix}[1]{\textsc{#1}}%
}

% adjust numbers
\usepackage[toc,eqno,enum,bib,lineno]{tabfigures}

% re-calculate div
%\KOMAoptions{DIV=last}

% class specific
\usepackage{paralist}

% import all texMacros
\input{texMacros}

\setlength\delimitershortfall{-1pt}

\title{}