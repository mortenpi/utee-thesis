%% utee-thesis.cls
%% Copyright 2014 Morten Piibeleht
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.

\LoadClass[a4paper,12pt]{report}
\RequirePackage{setspace}
\onehalfspacing

%\RequirePackage{fullpage}

%%%%%%%%%%%%          MAIN  CODE          %%%%%%%%%%%%

%%%%%%    Parameters

%% The following five commands set the respective field values so we can
%% generate the title page and abstract page automatically.
\newcommand*{\faculty}[1]%
  {\ifx\empty#1\empty\else\gdef\@faculty{#1}\fi}
\newcommand*{\institute}[1]%
  {\ifx\empty#1\empty\else\gdef\@institute{#1}\fi}
\renewcommand*{\author}[1]%
  {\ifx\empty#1\empty\else\gdef\@author{#1}\fi}
\newcommand*{\supervisor}[1]%
  {\ifx\empty#1\empty\else\gdef\@supervisor{#1}\fi}
\renewcommand*{\title}[1]%
  {\ifx\empty#1\empty\else\gdef\@title{#1}\fi}
\newcommand*{\thesistype}[1]%
  {\ifx\empty#1\empty\else\gdef\@thesistype{#1}\fi}
\newcommand*{\thesisyear}[1]%
  {\ifx\empty#1\empty\else\gdef\@thesisyear{#1}\fi}

%% Default values for the required fields.
\faculty{\emph{(faculty)}}
\institute{\emph{(institute)}}
\author{\emph{(author)}}
\supervisor{\emph{(supervisor)}}
\title{\emph{(title)}}
\thesistype{\emph{(paper type)}}
\thesisyear{\emph{(year of graduation)}}

%%%%%%    New formatting environments and commands.

%% Change \maketitle to follow LOTE guidelines.
\renewcommand*{\maketitle}{
	\begin{titlepage}
	\large\singlespacing
	\begin{center}
		UNIVERSITY OF TARTU \\[3mm]
		{\@faculty} \\[3mm]
		{\@institute}
		\vfill\vfill\vfill

		\large
		{\@author}\\[5mm]
		\Large
		\textbf{\textsc{\@title}}\\[7mm]

		\large
		\@thesistype
		\vfill%\vfill
		\begin{flushright}
			Supervisors:\\
				{\@supervisor}\\
		\end{flushright}
		\vfill\vfill\vfill
		Tartu ~ {\@thesisyear}\\
		%\vspace{.01\textheight}
	\end{center}
	\setcounter{page}{1}
	\end{titlepage}
	\setcounter{page}{2}
}

\newcommand*{\chapterstartoc}[1]
	{\chapter*{#1}\addcontentsline{toc}{chapter}{#1}}

%% Default settings: standard options followed by ut-thesis options.
%\ExecuteOptions{onehalfspacing}
%\ExecuteOptions{letterpaper,oneside,openright}
%\ExecuteOptions{normalmargins,onehalfspaced,singlespacednotes}

%% Process options.
\ProcessOptions

%% Run the basic commands and load packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc} % for cut-n-paste to work
\RequirePackage[none]{hyphenat}
%\RequirePackage[toc]{appendix}
\sloppy

\RequirePackage{setspace}
%\onehalfspacing

%% Default page style.
%\pagestyle{thesis}

%% Managing bibliography
\RequirePackage[nottoc]{tocbibind}
