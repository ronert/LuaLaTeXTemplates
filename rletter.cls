\ProvidesClass{rletter}

% language options
\DeclareOption{english}{\input{english}}
\DeclareOption{german}{\input{german}}

\ProcessOptions\relax

\LoadClass[parskip=true]{scrlttr2}

% load language specific packages
\input{language}

% math packages
\input{math}

% lualatex encoding
\input{encoding}

% colour
\usepackage[natural, svgnames, rgb, cmyk, table, x11names]{xcolor}
\input{colour}

% other packages
% figures
\usepackage{graphicx}
% code snippets
\usepackage{minted}
\usemintedstyle{tango}

% tables
\usepackage{array}
\usepackage{booktabs}
\usepackage{layout}
\usepackage{units}
\usepackage{cellspace}
\usepackage{multicol}
\usepackage{makecell}
\usepackage{dcolumn}
\usepackage{multirow}

% tikz setup
\usepackage{tikz}
\usetikzlibrary{arrows,matrix,backgrounds,shapes,positioning,fit,chains,calc}

% misc
\usepackage{rotating}
\usepackage{cancel} % Durchstreichen
\usepackage{xparse}
\usepackage{marginnote}
\usepackage{ragged2e}
\usepackage{fixltx2e}
\usepackage{relsize}
\usepackage[framemethod=tikz]{mdframed}
\usepackage{eurosym}

% hyperlinks
\usepackage{url}
\usepackage[colorlinks=true, linkcolor=DarkRed, urlcolor=DarkRed,
citecolor=DarkRed, filecolor=DarkRed, plainpages=false,
pdfpagelabels, bookmarksnumbered]{hyperref}

% fonts
\setmainfont[Ligatures=TeX]{Garamond Premier Pro}
\setsansfont[Ligatures=TeX,Scale=MatchUppercase]{Myriad Pro}
\setmonofont[Scale=MatchLowercase]{Droid Sans Mono}
\setmathfont[
Script       = Math , %% evtl. unnötig (?)
]{Minion Math}
\setmathfont[range={\mathbfup->\mathup}]{Minion Pro Bold}
\setmathfont[range={\mathbfit->\mathup}]{Minion Pro Bold Italic}
\setmathfont[range={\mathcal,\mathbfcal},StylisticSet=1]{XITS Math}

% import all texMacros
\input{texMacros}
\setlength\delimitershortfall{-1pt}

% Klassenspezifische Pakete
\usepackage{cmap}        % to make the PDF files "searchable and copyable" in pdf viewer
\usepackage{ellipsis}        % Korrigiert den Weißraum um Auslassungspunkte
\usepackage[headinclude,headtopline]{scrpage2}
\KOMAoptions{%
foldmarks=true,
backaddress=true,
fromphone=true,
fromemail=true,
enlargefirstpage=true,
paper=A4,
fontsize=12pt,
fromalign=right,
fromrule=false,
draft=false,
fromlogo=false
}
\setkomavar{fromname}{Ronert Obst}
\setkomavar{fromaddress}{Spinozastr. 13d\\
D-12163 Berlin}
\setkomavar{fromphone}{+49\,1736331244}
\setkomavar{fromemail}{ronert.obst@gmail.com}
\setkomavar{place}{Berlin}
\setkomavar{frombank}{Commerzbank\\BLZ~100\,80\,000\\Kto~503\,473\,500}
\setkomafont{fromname}{\sffamily\bfseries}
\setkomafont{backaddress}{\sffamily}
\setkomafont{fromaddress}{\sffamily}
\setkomafont{subject}{\sffamily}
%\setkomafont{frombank}{\sffamily}

%\addtokomafont{fromname}{\scriptsize}
%\addtokomafont{fromaddress}{\scriptsize}
\renewcommand*{\raggedsignature}{\raggedright}
%\@addtoplength[-1]{toaddrvpos}{20mm}
%\@addtoplength[-1]{refvpos}{20mm}
