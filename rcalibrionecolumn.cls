\ProvidesClass{rcalibrionecolumn}

% language options
\DeclareOption{english}{\input{english}}
\DeclareOption{german}{\input{german}}
\ProcessOptions\relax

% KOMA-Script
\LoadClass[DIV=calc,11pt,a4paper,parskip]{scrartcl}
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

% title formatting
\usepackage[]{titlesec}
\usepackage[labelfont={color=statblue}]{caption}
\titleformat*{\section}{\normalfont\Large\color{statblue}}
\titleformat*{\subsection}{\normalfont\large\color{statblue}}
\titleformat*{\subsubsection}{\normalfont\normalsize\color{statblue}}
\titleformat*{\paragraph}{\normalfont\normalsize\color{statblue}}
\titleformat*{\subparagraph}{\normalfont\normalsize\color{statblue}}

% bibliography files
\input{bibliography}

% hyperlinks
\usepackage{url}
\usepackage[colorlinks=true, linkcolor=statblue, urlcolor=statblue,
citecolor=statblue, filecolor=statblue, plainpages=false,
pdfpagelabels, bookmarksnumbered]{hyperref}

% fonts
\setmainfont[Ligatures=TeX]{Calibri}
\setromanfont[Ligatures=TeX]{Calibri}
\setmathfont[Ligatures=TeX]{Cambria Math}
\setsansfont[Ligatures=TeX]{Calibri}
\setmonofont{Droid Sans Mono}

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