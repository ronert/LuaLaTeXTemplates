\ProvidesClass{rletter}

% language options
\DeclareOption{english}{\input{english.letter}}
\DeclareOption{german}{\input{german.letter}}

\ProcessOptions\relax

\LoadClass[parskip=true,version=latest]{scrlttr2}

% load language specific packages
\input{language.letter}

% math packages
%\input{math}

% lualatex encoding
\input{encoding.letter}

% colour
\usepackage[natural, svgnames, rgb, cmyk, table, x11names]{xcolor}
\input{colour}

% other packages
\usepackage{graphicx}
\usepackage{booktabs}
\usepackage{eurosym}

% hyperlinks
\usepackage{url}
\usepackage[colorlinks=true, linkcolor=DarkRed, urlcolor=DarkRed,
citecolor=DarkRed, filecolor=DarkRed, plainpages=false,
pdfpagelabels, bookmarksnumbered]{hyperref}

% fonts
\setmainfont[BoldFont={Helvetica Neue},
 BoldItalicFont={Helvetica Neue Italic},
 ItalicFont={Helvetica Neue Light Italic}]{Helvetica Neue Light}
\setsansfont[BoldFont={Helvetica Neue},
 BoldItalicFont={Helvetica Neue Italic},
 ItalicFont={Helvetica Neue Light Italic}]{Helvetica Neue Light}
\setmonofont[Scale=MatchLowercase]{Source Code Pro}


% Klassenspezifische Pakete
\usepackage{cmap}        % to make the PDF files "searchable and copyable" in pdf viewer
\KOMAoptions{%
  foldmarks=false,
  backaddress=true,
  fromphone=true,
  fromemail=true,
  enlargefirstpage=true,
  paper=A4,
  fontsize=11pt,
  fromalign=right,
  fromrule=false,
  draft=false,
  fromlogo=false,
  headinclude
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
\renewcommand*{\raggedsignature}{\raggedright}
