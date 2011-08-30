\NeedsTeXFormat{LaTeX2e}
%Implementation of the NZ Law Style Guide by Roman Klapaukh
\ProvidesClass{nzlaw}[2011/08/18 Implementation of the NZ Law Style Guide]

\LoadClass[a4paper,12pt]{article}
\RequirePackage{law}
\RequirePackage{setspace}
\usepackage{amssymb} %amssymb must be loaded before fontspec
\usepackage{amsmath}
\RequirePackage{fontspec} \defaultfontfeatures{Mapping=tex-text}

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


%Set the correct counters
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\Alph{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}}
\renewcommand{\theparagraph}{(\alph{paragraph})}
\renewcommand{\thesubparagraph}{(\roman{subparagraph})}


%Make the needed titles italic
\titleformat*{\section}{\itshape}
\titleformat*{\subsection}{\itshape}
\titleformat*{\subsubsection}{\itshape}
\titleformat*{\paragraph}{\rm}
\titleformat*{\subparagraph}{\rm}

\setlength{\parindent}{0pt}

\endinput
