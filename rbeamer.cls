\ProvidesClass{rbeamer}

% Beamer
\LoadClass[xcolor=dvipsnames,natural,svgnames,rgb,cmyk,table,x11names]{beamer}

% language options
\RequirePackage[babelshorthands]{polyglossia}
\DeclareOption{english}{\input{english}}
\DeclareOption{german}{\input{german}}
\ProcessOptions\relax

% specify theme
\usetheme{Pittsburgh}
\usecolortheme{dove}
\usefonttheme[onlymath]{serif}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{footline}[page number]

% Possibility to adjust margins for figures
\usepackage{geometry}
\usepackage{changepage}

\newenvironment{changemargin}[2]{%
\begin{list}{}{%
\setlength{\topsep}{0pt}%
\setlength{\leftmargin}{#1}%
\setlength{\rightmargin}{#2}%
\setlength{\listparindent}{\parindent}%
\setlength{\itemindent}{\parindent}%
\setlength{\parsep}{\parskip}%
}%
\item[]}{\end{list}}

% load language specific packages
\input{language}

% math packages
\input{math}


% load language specific packages
\input{language}

% Encoding
% xelatex encoding
\input{encoding}

% colour
\input{colour}

% other packages
\input{packages}

% bibliography files
\input{bibliography}

% hyperlinks
\usepackage{url}

% fonts
\defaultfontfeatures{Scale=MatchLowercase,Mapping=tex-text,Ligatures=TeX}
\setmainfont{Calibri}
\setromanfont{Cambria}
\setsansfont{Calibri}
\setmonofont{Menlo}
\setmathfont{Cambria Math}

% Import all texMacros
\input{texMacros}

% Adjust beamer theme
\usepackage[labelfont={color=statblue}]{caption}
\setbeamercolor{frametitle}{fg=msdarkblue}
\setbeamercolor{title}{fg=msdarkblue}
\setbeamercolor{author}{fg=msdarkblue}
\setbeamercolor{date}{fg=msdarkblue}

% Fits the presentation to the window when first displayed
\hypersetup{pdfstartview={Fit}}


% fix beamer appendix
\makeatletter
\let\appendixtotalframenumber\empty
\def\mainend{-1}
\let\appendixorig\appendix

\def\appendix{
  \edef\mainend{\theframenumber}
  \immediate\write\@auxout{\string\global\string\@namedef{mainendframenumber}{\mainend}}
  \appendixorig
  \def\inserttotalframenumber{\appendixtotalframenumber}%
  \setcounter{framenumber}{0}
}

\def\pageatend{
  \edef\appendixend{\theframenumber}
  \ifnum\mainend>0%
  \immediate\write\@auxout{\string\global\string\@namedef{appendixtotalframenumber}{\appendixend}}%
  \immediate\write\@auxout{\string\global\string\@namedef{inserttotalframenumber}{\mainend}}%
  \immediate\write\@auxout{\string\@writefile{nav}{\noexpand \headcommand {%
        \noexpand \def\noexpand \inserttotalframenumber{\mainend}}}}%
  \immediate\write\@auxout{\string\@writefile{nav}{\noexpand \headcommand {%
        \noexpand \def\noexpand \appendixtotalframenumber{\appendixend}}}}%
  \else
  \fi
}


\AtEndDocument{\pageatend}
\makeatother