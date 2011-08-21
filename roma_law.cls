\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{roma_law}[2011/08/18 Implementation of the NZ Law Style Guide]

\LoadClass[a4paper,12pt]{article}
\RequirePackage{law}
\RequirePackage{setspace}
\usepackage{amssymb} %amssymb must be loaded before fontspec
\usepackage{amsmath}
\RequirePackage{fontspec} \defaultfontfeatures{Mapping=tex-text}

\onehalfspacing

\setromanfont[Scale=1.0]{Times New Roman}
\setsansfont[Scale=1.0]{Arial}
\setmonofont[Scale=1.0]{Courier New}

\endinput
