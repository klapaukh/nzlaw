\NeedsTeXFormat{LaTeX2e}
%Implementation of the NZ Law Style Guide by Roman Klapaukh
\ProvidesClass{nzlaw}[2011/08/18 Implementation of the NZ Law Style Guide]

\LoadClass[a4paper,12pt]{article}
\RequirePackage{law}
\RequirePackage{setspace}
\usepackage{amssymb} %amssymb must be loaded before fontspec
\usepackage{amsmath}
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
  \renewenvironment{abstract}{
        \fontsize{10pt}{12.5}\selectfont
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation}

\renewcommand{\footnotesize}{\fontsize{10pt}{12.5pt}\selectfont}

\endinput
