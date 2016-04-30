%%
%% This is file `uoyths.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% uoyths.dtx  (with options: `class')
%% This is a generated file.
%% 
%% Copyright (C) 2005 by Lee Netherton <ltn100@ohm.york.ac.uk>
%% 
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
\def\datelastmodified/{2005/03/15}%
\def\versionnumber/{v0.1}%
\def\filedescription/{Thesis Class to University of York Specifications}%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]%
\ProvidesClass{uoyths}[\datelastmodified/ \versionnumber/ \filedescription/]%
\hbadness=10000% Suppress hbox warnings
\RequirePackage{ifthen}%
\DeclareOption{10pt}{\PassOptionsToClass{\CurrentOption}{report}}%
\DeclareOption{11pt}{\PassOptionsToClass{\CurrentOption}{report}}%
\DeclareOption{12pt}{\PassOptionsToClass{\CurrentOption}{report}}%
%\DeclareOption{bibunits}{}%
%\DeclareOption{nobibunits}{}%
\DeclareOption{minitocs}{}%
\DeclareOption{nominitocs}{}%
\ProcessOptions\relax%
\LoadClass[11pt,a4paper,dvips]{report}%
\RequirePackage{minitoc}%
%\RequirePackage[globalcitecopy,sectionbib]{bibunits}%
\RequirePackage{chapterEnv}%
\RequirePackage{nomencl}%
\RequirePackage{setspace}%
\RequirePackage{fancyhdr}% fancyhdr - fancy page headings
\RequirePackage{epsfig}% Allow rendering of the logo from eps
\RequirePackage{xkeyval}% Allows for key/value options for commands and environments
    \def\cite@style{agsm}%
%\def\bib@file{}%
\def\caption@size{\footnotesize}%
\def\mtc@indent{24pt}%
\newcommand{\SetCitationStyle}[1]{\def\cite@style{#1}}%
%\newcommand{\SetBibliographyFile}[1]{\def\bib@file{#1}}%
\newcommand{\SetCaptionSize}[1]{\def\caption@size{#1}}%
\newcommand{\SetMtcIndent}[1]{\def\mtc@indent{#1}}%
\newcommand{\SetupPackages}%
{%
    %\citestyle{\cite@style}%
%    \defaultbibliography{\bib@file}
 %   \defaultbibliographystyle{\cite@style}
    %\let\temp@putbib\putbib%
    %\def\putbib
    %{%
%        \let\temp@bibname\bibname%
%        \def\bibname{\@chapapp\space\temp@bibname}%
%        \let\temp@section\section%
%        \renewcommand{\section}[2]{\temp@section{\bibname}}%
%        \temp@putbib%
%        \@ifundefined{temp@section}{}{\let\section\temp@section}%
%        \let\bibname\temp@bibname%
%    }%
    \dominitoc%
    \dominilof%
    \dominilot%
    \setcounter{minitocdepth}{3}%
    \setlength{\mtcindent}{\mtc@indent}%
    \renewcommand{\mtcfont}{\small\rm}%
    \renewcommand{\mtcSfont}{\small\bf}%
    \renewcommand{\nompreamble}{\mtcaddchapter[\nomname]\@mkboth{\MakeUppercase\nomname}{\MakeUppercase\nomname}}%
    \makenomenclature%
    \newif\if@chapmtc\@chapmtctrue%
    \newif\if@chapmlf\@chapmlffalse%
    \newif\if@chapmlt\@chapmltfalse%
    \newif\if@chapbu\@chapbutrue%
    \newcommand{\showmtc}{\@chapmtctrue}%
    \newcommand{\hidemtc}{\@chapmtcfalse}%
    \newcommand{\showmlf}{\@chapmlftrue}%
    \newcommand{\hidemlf}{\@chapmlffalse}%
    \newcommand{\showmlt}{\@chapmlttrue}%
    \newcommand{\hidemlt}{\@chapmltfalse}%
    \newcommand{\showbu}{\@chapbutrue}%
    \newcommand{\hidebu}{\@chapbufalse}%
    \addToStartOfChapter%
    {%
        %\acresetall%
        \begin{singlespace}%
            \if@chapmtc%
                \minitoc%
                \if@chapmlf%
                    \mtcskip%
                \fi%
            \fi%
            \if@chapmlf%
                \minilof%
                \if@chapmlt%
                    \mtcskip%
                \fi%
            \fi%
            \if@chapmlt%
                \minilot%
            \fi%
        \end{singlespace}%
        %\begin{bibunit}
    }%
    %    \end{macrocode}
    %           At the end of each chapter we will include a |bibunit|.
    %    \begin{macrocode}
    \addToEndOfChapter%
    {%
            %\begin{singlespace}%
             %   \if@chapbu%
              %      \putbib%
               % \fi%
            %\end{singlespace}%

        %\end{bibunit}
    }%
}%
\AtBeginDocument{\SetupPackages}
\renewenvironment{abstract}%
{%
    \hidemtc% Remove MiniTOC
    \hidebu% Remove MiniTOC
    \begin{chapterEnv}{Abstract}
}%
{%
    \end{chapterEnv}
    \showmtc%
    \showbu%
}%
    % A4 height is 297mm
    \voffset    -25.4mm % Remove Latex one inch offset
    \topmargin  15mm    % Top of page to top of header
    \headheight 5mm    % Height of header
    \headsep    10mm    % Bottom of header to top of body
    \textheight 242mm   % Body height 15+5+10+<body>+10+15 = 297
    \footskip   10mm    % Bottom of body to bottom of footer

    % A4 width is 210mm
    \hoffset        -25.4mm % Remove Latex one inch offset
    \oddsidemargin  40mm    % Binding side margin width - page edge to body
    \textwidth      155mm   % Body width 40+<body>+0+0+15 = 210
    \marginparsep   0mm     % Separation between body and margin motes
    \marginparwidth 0mm     % Margin notes width
    %\marginparpush  0mm     % ???

\parindent  0pt % Paragraph Indent
\parskip    4pt % Vertical distance between paragraphs

\setstretch{1.5}   % Line spacing

    \pagestyle{fancy}

    \lhead{\bfseries\small\nouppercase{\rightmark}}%
    \rhead{\bfseries\small\nouppercase{\thepage}}%
    \renewcommand{\headrulewidth}{2pt}%


    %\lfoot{}
    \cfoot{}
    \rfoot{}
    %\renewcommand{\footrulewidth}{0.4pt}


    \renewcommand{\@makefnmark}{\mbox{$^{[\@thefnmark]}$}}% - Add [ ] around footnote numbers (to avoid confusion with indicies)

    \let\old@makecaption\@makecaption%
    \renewcommand{\@makecaption}{\caption@size\old@makecaption}%

\newlength{\barlength}
\setlength{\barlength}{\textwidth} \addtolength{\barlength}{-1pt}
\newlength{\VerticalOffset}
\setlength{\VerticalOffset}{5cm}

\newcommand{\defaulttitlefont}{\fontsize{10.95}{13.6}\selectfont}
\newcommand{\titlefont}{\bfseries \fontsize{22}{26.42pt}\selectfont}
\newcommand{\largetitlefont}{\bfseries \fontsize{29.88}{35.88pt}\selectfont}
\newcommand{\othertitlefont}{\fontsize{14.4}{17.28}\selectfont}
\newcommand{\authorfont}{\bfseries \fontsize{14.4}{17.28}\selectfont}
\newcommand{\informationfont}{\fontsize{10}{12}\selectfont}
\newcommand{\dedicationfont}{\slshape \fontsize{14.4}{17.28}\selectfont}

%Command to handle supervisors
\newcommand{\supervisors}[1]{\def\uoyclssupervisors{#1}}

%Command to handle academic year
\newcommand{\academicyear}[1]{\def\uoyclsacademicyear{#1}}

\newcommand{\thisyear}{\number\year}
\def\thismonth{\ifcase\month\or January\or February\or March\or
  April\or May\or June\or July\or August\or September\or October\or November\or December\fi}
\newcommand{\todaysdate}{\thismonth, \thisyear}

\define@boolkeys{titlepagekeys}[tp@]{cover,title,logo}{}%
\tp@covertrue%
\tp@titletrue%
\tp@logotrue%

\providecommand*{\sectfont}{\relax}
\renewenvironment{titlepage}[1][,]%
{%
    \setkeys{titlepagekeys}{#1}%
    \relax%
}%
{%
    {\singlespacing

        \let\footnotesize\small
        \let\footnoterule\relax
        \defaulttitlefont

        % Front Cover - temporarily balance margins to 35mm each side
        \iftp@cover
            \thispagestyle{empty}
            \begin{list}{}{
                    \setlength{\leftmargin}{-5mm}%
                    \setlength{\rightmargin}{20mm}%
                }
                \item[]%

                \vspace*{1cm}
                \begin{center}
                    {\includegraphics[width=0.4\textwidth]{uoy_logo.png}}
                \end{center}
                \par
                \vspace*{1cm}
                \par
                \begin{center}
                    {\LARGE \textsc{Department of Electronics}}
                    %{\titlefont \@title}
                \end{center}
                \par
                \vspace*{\fill}
                \par
                \begin{center}
                    %{\othertitlefont \@author}
                    {\titlefont MEng Project Report \\ \uoyclsacademicyear}
                    
                \end{center}
                \par
                \vspace*{\fill}
                \par
                %\begin{center}
                    %{\othertitlefont \textsc{MEng}}
                    {\othertitlefont \textbf{Student Name:} \@author}\\\\
                    {\othertitlefont \textbf{Project Title:} \@title}\\\\
                    {\othertitlefont \textbf{Supervisors:} \uoyclssupervisors}\\\\
                %\end{center}
                \par
                \vspace*{\fill}
                \par
                \begin{center}
                    {\othertitlefont
                    \textsc{Department of Electronics}\\
                    \textsc{University of York}\\
                    \textsc{Heslington}\\
                    \textsc{York}\\
                    \textsc{YO10 5DD}}
                \end{center}
                \par
            \end{list}
        \fi

        \iftp@title
            % Title page with university description
            \newpage \thispagestyle{empty}
            \vspace*{1.5cm}
            \begin{flushright}
                \largetitlefont \@title
            \end{flushright}
            \par
            \vspace*{\fill}
            \begin{flushright}
                \parbox{.63\linewidth}{\othertitlefont
                Submitted in accordance to the requirements
                of the University of York for the degree of
                Master of Engineering.}
            \end{flushright}
            \vspace*{\fill}
            \par
            \begin{flushright}
                {\authorfont \@author}\\[2mm]
                {\othertitlefont \@date}\\[1mm]
                \rule{.45\linewidth}{0.8mm}\\[0mm]
                \vspace*{3mm}

                \iftp@logo
                    %\epsfig{file=uoyths_logo.eps,width=.63\linewidth}
                    \includegraphics[width=0.45\linewidth]{uoy_logo.png}
                \else
                    \textsc{}\\[1mm]
                    {\othertitlefont Department of Electronics}\\[1mm]
                    {\othertitlefont University of York}\\[5mm]
                \fi
            \end{flushright}
            \par
        \fi

        % Reset Footnote counter
        \setcounter{footnote}{0}%

        % Remove \maketitle commands
        \let\thanks\relax\let\maketitle\relax

        % Remove other commands
        \gdef\@thanks{}\gdef\@author{}\gdef\@title{}

    }% End Single Spacing
}%
%\newcommand{\printbibliography}{%
%    \let\thebibliographytemp\thebibliography%
%    \bibliographyunit%
 %   \let\thebibliography\stdthebibliography%
  %  \bibliographystyle{\cite@style}%
   % \newcommand{\bibpreamble}{\mtcaddchapter[\bibname]}%
    %\bibliography{\bib@file}%
    %\renewcommand{\bibpreamble}{}%
    %\let\thebibliography\thebibliographytemp%
%}
\newcommand{\stopstar}
{
    \let\temp@schapter\@schapter%
    \renewcommand{\@schapter}[1]{\@chapter[##1]{##1}}%
    \let\temp@ssect\@ssect%
    \renewcommand{\@ssect}[5]{\@sect{section}{1}{##1}{##2}{##3}{##4}[##5]{##5}}%
}

\newcommand{\startstar}
{
    \@ifundefined{temp@schapter}{}{\let\@schapter\temp@schapter}%
    \@ifundefined{temp@ssect}{}{\let\@ssect\temp@ssect}%
}

\def\possessive@postmark{'s}%

\newcommand{\possessivecite}[1]%
{%
    \citeauthor{#1}\possessive@postmark\ \citeyearpar{#1}
}%

\newcommand{\figref}[1]{\figurename~\ref{#1}}%
\newcommand{\Figref}[1]{\figurename~\ref{#1}}%
\newcommand{\tabref}[1]{\tablename~\ref{#1}}%
\newcommand{\Tabref}[1]{\tablename~\ref{#1}}%
\newcommand{\chapref}[1]{\chaptername~\ref{#1}}%
\newcommand{\Chapref}[1]{\chaptername~\ref{#1}}%
\newcommand{\appenref}[1]{\appendixname~\ref{#1}}%
\newcommand{\Appenref}[1]{\appendixname~\ref{#1}}%
\newcommand{\secref}[1]{Section~\ref{#1}}%
\newcommand{\Secref}[1]{Section~\ref{#1}}%
\newcommand{\subsecref}[1]{\textsection\ref{#1}}%
\newcommand{\Subsecref}[1]{Subsection~\ref{#1}}%
\newcommand{\Eqref}[1]{Equation~\eqref{#1}}%
\endinput
%%
%% End of file `uoyths.cls'.
