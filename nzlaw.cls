\NeedsTeXFormat{LaTeX2e}
%Implementation of the NZ Law Style Guide by Roman Klapaukh
\ProvidesClass{nzlaw}[2011/08/18 Implementation of the NZ Law Style Guide]

\LoadClass[a4paper,12pt]{article}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{amssymb} %amssymb must be loaded before fontspec
\RequirePackage{amsmath}
\RequirePackage{enumerate}
\RequirePackage{fontspec} 
%pick up tex character mappings
\defaultfontfeatures{Mapping=tex-text}



%set to be 1.25 line spacing
\setstretch{1.25}

%set the correct fonts
\setromanfont[Scale=1.0]{Palatino Linotype}
\setsansfont[Scale=1.0]{Arial}
\setmonofont[Scale=1.0]{Courier New}

\RequirePackage{titlesec}

%remove the quad from after the counter
%\titlelabel{\thesection\quad}
%\titlelabel{\thesubsection}
%\titlelabel{\thesubsubsection}

%Tell the counters to count until depth 5
\setcounter{secnumdepth}{5}

%Set the correct counters
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\Alph{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}}
\renewcommand{\theparagraph}{(\alph{paragraph})}
\renewcommand{\thesubparagraph}{(\roman{subparagraph})}

%\renewcommand{\thepage}{\large\page}


%Make the needed titles italic
\titleformat*{\section}{\itshape\fontsize{14pt}{17.5pt}\selectfont}
\titleformat*{\subsection}{\itshape}
\titleformat*{\subsubsection}{\itshape}
\titleformat{\paragraph}[hang]{\rm}{\theparagraph}{1em}{}
\titlespacing*{\paragraph}{0pt}{1.25ex plus 0.5ex minus 0.25 ex}{1ex}

\titleformat{\subparagraph}[hang]{\rm}{\thesubparagraph}{1em}{}
\titlespacing*{\subparagraph}{0pt}{1.25ex plus 0.5ex minus 0.25 ex}{1ex}
%make paragraph and subparagraph have own line
%\titlespacing*{\subparagraph}{}{3.25ex plus 1ex minus .2ex}{.75ex plus .1ex}

%Set the paragraph indent
%\setlength{\parindent}{0pt}

%set the size of abstract font
  \renewenvironment{abstract}{
        \fontsize{10pt}{12.5}\selectfont
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation}

%set footnote font size
\renewcommand{\footnotesize}{\fontsize{10pt}{12.5pt}\selectfont}

\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{fancy}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

\newcommand{\studentid}[1]{\def\@studentid{#1}}
\newcommand{\wordcount}[1]{\def\@wordcount{#1}}
\studentid{}
\wordcount{}

\newcommand{\headerfontsize}{\fontsize{8pt}{10pt}\selectfont}
\pagestyle{fancy}
%clear header / footer
\fancyhead{}
\fancyfoot{}
\fancyhead[R]{\headerfontsize\@studentid}
\fancyhead[L]{\headerfontsize Word Count: \@wordcount}
\fancyfoot[C]{\headerfontsize\thepage}
%Letter options for fancy header
%E: Even page
%O: Odd page
%L: Left field
%C: Center field
%R: Right field
%H: Header
%F: Footer

%set bar size 
%\renewcommand{\headrulewidth}{0.4pt}
%\renewcommand{\footrulewidth}{0.4pt}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}



%%Useful macros
\newcommand{\shortquote}[1]{``#1''}
\newcommand{\longquote}[1]{\begin{quote}
\fontsize{11pt}{13.75pt}\selectfont
#1
\end{quote}}

%Set the picture used by the enumerate command
%per level 
\renewcommand{\labelitemi}{$\bullet$}
\renewcommand{\labelitemii}{$\cdot$}
\renewcommand{\labelitemiii}{$\circ$}
\renewcommand{\labelitemiv}{$\ast$}
%\newcommand{\endash}{--}
%\newcommand{\emdash}{---}
\newcommand{\ellipsis}{\ldots}

\endinput
