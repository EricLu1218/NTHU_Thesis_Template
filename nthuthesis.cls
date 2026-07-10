%% This template is modified by Chen-Han Lu for the new NTHU thesis format.
%% Original authors' repos: 
%% 1. Tz-Huan Huang (https://github.com/tzhuan/ntu-thesis)
%% 2. Hao-Wei Lee (https://github.com/HW-Lee/nthu-thesis-template)
%% 3. <signxer> (https://github.com/signxer/nthu-thesis-template-mod)


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nthuthesis}[2026/07/09 Thesis template for National Tsing Hua University]

%% Derived from book class
\DeclareRobustCommand{\@typeen}{Master's}
\DeclareRobustCommand{\@typezh}{碩士}
\DeclareRobustCommand{\@classen}{Thesis}
\DeclareRobustCommand{\@classzh}{論文}
\DeclareRobustCommand{\@typeclasszh}{\makebox[5.9cm][s]{\@typezh\@classzh}}
\DeclareOption{phd}{\gdef\@typeen{Doctoral} \gdef\@typezh{博士}\gdef\@classen{Dissertation}}
\DeclareOption{proposal}{\gdef\@typeen{Proposal for Doctoral} \gdef\@typezh{博士論文計畫提案書} \gdef\@classen{Dissertation} \gdef\@classzh{} \gdef\@typeclasszh{\makebox[8.5cm][s]{\@typezh\@classzh}}}

\DeclareRobustCommand{\@abstractnameen}{Abstract}
\DeclareRobustCommand{\@abstractnamezh}{摘要}
\DeclareRobustCommand{\@acknowledgementsnameen}{Acknowledgements}
\DeclareRobustCommand{\@acknowledgementsnamezh}{誌謝}

\DeclareRobustCommand{\@setspacing}{\doublespacing}
\DeclareOption{singlespacing}{\gdef\@setspacing{\singlespacing}}
\DeclareOption{onehalfspacing}{\gdef\@setspacing{\onehalfspacing}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

%% Set document class. Add "oneside" to prevent the insertion of empty pages.
\LoadClass[a4paper,12pt,oneside]{book}

%% Required packages
\RequirePackage[top=3cm,bottom=2.5cm,hmargin=3cm]{geometry}
\RequirePackage{xeCJK}
\RequirePackage{setspace}

%% Declarations of nthuvars.tex
\DeclareRobustCommand{\university}[2]{\gdef\@universityen{#1} \gdef\@universityzh{#2}}
\DeclareRobustCommand{\institute}[2]{\gdef\@instituteen{#1} \gdef\@institutezh{#2}}
\DeclareRobustCommand{\title}[2]{\gdef\@titleen{#1} \gdef\@titlezh{#2}}
\DeclareRobustCommand{\studentid}[1]{\gdef\@studentid{#1}}
\DeclareRobustCommand{\author}[2]{\gdef\@authoren{#1} \gdef\@authorzh{#2}}
\DeclareRobustCommand{\advisor}[2]{\gdef\@advisoren{#1} \gdef\@advisorzh{#2}}
\DeclareRobustCommand{\defenseyear}[2]{\gdef\@yearen{#1} \gdef\@yearzh{#2}}
\DeclareRobustCommand{\defensemonth}[2]{\gdef\@monthen{#1} \gdef\@monthzh{#2}}
\DeclareRobustCommand{\defenseday}[2]{\gdef\@dayen{#1} \gdef\@dayzh{#2}}

%% Declarations of book cover
\DeclareRobustCommand{\makecover}{
    \doublespacing
    \begin{titlepage}
        \hbadness=10000
        \newgeometry{vmargin=2.54cm,hmargin=3.18cm}
        \begin{center}
            \fontsize{24}{24}\selectfont
            \makebox[9.3cm][s]{\@universityzh} \par
            \@universityen \par
            \vspace{24pt}
            % \makebox[5.9cm][s]{\@typezh\@classzh} \par
            \@typeclasszh \par
            \@typeen~\@classen \par
        \end{center}
        \vspace{\fill}
        \begin{center}
            \fontsize{20}{24}\selectfont
            \@titlezh \par
            \@titleen \par
        \end{center}
        \vspace{\fill}
        \begin{flushleft}
            \setlength{\leftskip}{1.7cm}
            \fontsize{18}{20}\selectfont
            系所別：\@institutezh \par
            Dept./Grad. Inst.：{\fontsize{17}{18}\selectfont \@instituteen} \par
            學號Student ID.：\@studentid \par
            研究生Author：\@authorzh~\@authoren \par
            指導教授Advisor：\@advisorzh~\@advisoren \par
        \end{flushleft}
        \vspace{\fill}
        \begin{center}
            \fontsize{18}{18}\selectfont
            \makebox[9cm][s]{中華民國~\text{\@yearzh}~年~\text{\@monthzh}~月} \par
            \@monthen~\@yearen
        \end{center}
    \end{titlepage}
}

%% Create and define quotation pages
\newenvironment{quotationpage}[1]{
    \if@openright\cleardoublepage\else\clearpage\fi
    \chapter*{\centerline{#1}}
    \quotation
}{
    \endquotation
}
\newenvironment{abstracten}{
    \begin{quotationpage}{\@abstractnameen}}{\end{quotationpage}
}
\newenvironment{abstractzh}{
    \begin{quotationpage}{\@abstractnamezh}}{\end{quotationpage}
}
\newenvironment{acknowledgementsen}{
    \begin{quotationpage}{\@acknowledgementsnameen}}{\end{quotationpage}
}
\newenvironment{acknowledgementszh}{
    \begin{quotationpage}{\@acknowledgementsnamezh}}{\end{quotationpage}
}

%% Set reference format
\renewcommand{\bibname}{References}
\let\oldbibliography\bibliography
\renewcommand{\bibliography}[1]{
    \clearpage
    \singlespacing
    \addcontentsline{toc}{chapter}{\bibname}
    \oldbibliography{#1}
}

%% Set content format
\setcounter{tocdepth}{2}
\pagestyle{plain}
\@setspacing

%% Remove the large white space at the top of every chapter and content.
% \renewcommand{\@makechapterhead}[1]{ % for chapter
%     \vspace*{-20pt} % the top of chapter
%     {
%         \parindent \z@ \raggedright \normalfont
%         \ifnum \c@secnumdepth >\m@ne
%             \if@mainmatter
%                 \huge\bfseries \@chapapp\space \thechapter
%                 \par\nobreak
%                 \vspace{15pt} % between chapter and chapter name
%             \fi
%         \fi
%         \interlinepenalty\@M
%         \huge \bfseries #1\par\nobreak
%         \indent\vspace{30pt} % between chapter name and chapter content
%     }
% }
% \renewcommand{\@makeschapterhead}[1]{ % for abstract, acknowledgements, and content
%     \vspace*{-20pt} % the top of content title
%     {
%         \parindent \z@ \raggedright
%         \normalfont
%         \interlinepenalty\@M
%         \huge \bfseries  #1\par\nobreak
%         \indent\vspace{30pt} % between content title and content
%     }
% }
