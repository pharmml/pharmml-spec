\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{pharmmlspec}[2013/03/13 PharmML Specification]
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{memoir}
}
\ProcessOptions\relax
\LoadClass{memoir}
\RequirePackage{ifpdf}
\RequirePackage{ifxetex}

\ifpdf
\RequirePackage[pdftex]{graphicx}
\else
\ifxetex 
\RequirePackage[xetex]{graphicx}
\else 
\RequirePackage{graphicx}
\fi
\fi

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{pifont}
\RequirePackage{times}
\RequirePackage{fancybox}
\RequirePackage{tabularx}
\RequirePackage{xspace}
\RequirePackage[svgnames]{xcolor}
\RequirePackage[chapter]{minted}
\RequirePackage{listings}
\RequirePackage{pdfpages}
\RequirePackage[left=2cm,right=2cm,top=2.5cm,bottom=2cm]{geometry}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{booktabs}
\RequirePackage{wrapfig}
\RequirePackage[right,pagewise]{lineno}
\RequirePackage{xtab}
\RequirePackage{multirow}

\ifpdf
\RequirePackage[pdftex]{hyperref}
\else
\ifxetex
\RequirePackage[xetex]{hyperref}
\else
\RequirePackage{hyperref}
\fi
\fi

\RequirePackage{memhfixc}

%\usepackage{fancyvrb}
%\usepackage{fancylistings}

\bibliographystyle{apalike}

\graphicspath{{./pics/}{./figures/}}

%\lstset{fancyvrb=true}

\colorlet{bkgd}{gray!5}
%\usemintedstyle{trac}

% \newminted{xml}{bgcolor=bkgd,fontsize=\scriptsize%
% ,fontfamily=courier%
% }

% \newcommand{\inputxml}[1]{\inputminted[bgcolor=bkgd,fontsize=\scriptsize%
% ,fontfamily=courier%
% ]{xml}{codesnippets/#1}}

\newminted{xml}{fontsize=\scriptsize,fontfamily=courier}

\newcommand{\inputxml}[1]{\inputminted[fontsize=\scriptsize%
,fontfamily=courier%
]{xml}{codesnippets/#1}}

% Colours stolen from SBML pkg spec class
\definecolor{lightblue}{rgb}{0.07, 0.50, 0.78}
\definecolor{mediumgreen}{rgb}{0.1, 0.6, 0.3}

\definecolor{hellgelb}{rgb}{1,1,0.9}
\definecolor{colKeys}{rgb}{0,0,1}
\definecolor{colIdentifier}{rgb}{0,0,0}
\definecolor{colComments}{rgb}{1,0,0}
\definecolor{colString}{rgb}{0,0.5,0}

\lstset{%
    basicstyle=\ttfamily\footnotesize, %
    identifierstyle=\color{colIdentifier}, %
    keywordstyle=\color{colKeys}, %
    stringstyle=\color{colString}, %
    breakatwhitespace=true,%
    commentstyle=\color{colComments}, %
    tabsize=2, %
    frame=single, %
    framerule=0pt, %
    extendedchars=true, %
    showspaces=false, %
    showlines=true, %
    showstringspaces=false, %
    numberstyle=\tiny, %
    breaklines=true, %
    %prebreak={\space\wrapsign}, %
    backgroundcolor=\color[gray]{0.95}, %
    breakautoindent=true, %
    captionpos=b%
}

\lstdefinelanguage{XML}
{
   %basicstyle=\ttfamily\color{blue}\bfseries,
   morestring=[b]",
   morestring=[s]{>}{<},
   morecomment=[s]{<?}{?>},
%   %stringstyle=\color{black},
   identifierstyle=\color{darkblue},
   keywordstyle=\color{cyan},
   morekeywords={xmlns,version,type}% list your attributes here
}

\newcommand{\mailto}[1]{\hyperlink{mailto:#1}{#1}}
\newcommand\HRule{\noindent\rule{\linewidth}{1.5pt}}

\newcommand\arrays{Arrays and Sets\xspace}
\newcommand\arraysshort{arrays\xspace}
\newcommand\distribshort{distrib\xspace}
\newcommand\distrib{Distributions\xspace}
\newcommand\ddmore{{%
%\fontsize{9.5}{7}
\usefont{T1}{pag}{m}{n}ddmore}\xspace%
}
\newcommand\cellml{CellML\xspace}
\newcommand\sbml{SBML\xspace}
\newcommand\sedml{SED-ML\xspace}
\newcommand\uncertml{UncertML\xspace}
\newcommand\nonmem{NONMEM\xspace}
\newcommand\mlambda{\class{Lambda}\xspace}
\newcommand\mmath{\class{Math}\xspace}
\newcommand{\mathml}{MathML\xspace}
\newcommand{\monolix}{Monolix\xspace}
\newcommand{\pharmml}{PharmML\xspace}
\newcommand{\moml}{\pharmml}
\newcommand{\Cc}{\mathit{Cc}}
\newcommand{\CL}{\ensuremath{\mathit{CL}}}
\newcommand{\concentration}{\mathit{concentration}}
\newcommand{\Categories}{\mathit{Categories}}
\newcommand{\CategoriesNumber}{\mathit{CategoriesNumber}}
\newcommand{\Concentration}{\mathit{Concentration}}
\newcommand{\Covariate}{\mathit{Covariate}}
\newcommand{\Covariates}{\mathit{Covariates}}
\newcommand{\CovariatesType}{\mathit{CovariatesType}}
\newcommand{\CovariatesFile}{\mathit{CovariatesFile}}
\newcommand{\CovariatesPopDistribution}{\mathit{CovariatesPopDistribution}}
\newcommand{\CovariatesTransf}{\mathit{CovariatesTransf}}
\newcommand{\Combined}{\mathit{Combined}}
\newcommand{\Continuous}{\mathit{Continuous}}
\newcommand{\Categorical}{\mathit{Categorical}}
\newcommand{\Constant}{\mathit{Constant}}
\newcommand{\Css}{\mathit{Css}}
\newcommand{\DoseInterval}{\mathit{DoseInterval}}
\newcommand{\DoseSize}{\mathit{DoseSize}}
\newcommand{\DosePerKg}{\mathit{DosePerKg}}
\newcommand{\DoseUnit}{\mathit{DoseUnit}}
\newcommand{\DoseTime}{\mathit{DoseTime}}
\newcommand{\EstimationTask}{\mathit{EstimationTask}}
\newcommand{\EstimationAlgorithm}{\mathit{EstimationAlgorithm}}
\newcommand{\file}{\mathit{file}}
\newcommand{\group}{\mathit{group}}
\newcommand{\Hemorrhaging}{\mathit{Hemorrhaging}}
\newcommand{\iijj}{\mathit{ij}}
\newcommand{\IC}{\mathit{IC}}
\newcommand{\Imax}{\mathit{Imax}}
\newcommand{\ka}{\ensuremath{\mathit{ka}}}
\newcommand{\kg}{\mathit{kg}}
\newcommand{\kout}{\mathit{kout}}
\newcommand{\llambda}{\mathit{lambda}}
\newcommand{\lognormal}{\mathit{logNormal}}
\newcommand{\logit}{\mathit{logit}}
\newcommand{\mg}{\mathit{mg}}
\newcommand{\no}{\mathit{no}}
\newcommand{\NumberReplicate}{\mathit{NumberReplicate}}
\newcommand{\ObservationName}{\mathit{ObservationName}}
\newcommand{\ObservationUnit}{\mathit{ObservationUnit}}
\newcommand{\ObservationTime}{\mathit{ObservationTime}}
\newcommand{\ObservationType}{\mathit{ObservationType}}
\newcommand{\Occasion}{\mathit{Occasion}}
\newcommand{\pop}{\mathit{pop}}
\newcommand{\Rin}{\mathit{Rin}}
\newcommand{\ResidualErrorModel}{\mathit{ResidualErrorModel}}
\newcommand{\Parameters}{\mathit{Parameters}}
\newcommand{\Percentage}{\mathit{Percentage}}
\newcommand{\Population}{\mathit{Population}}
\newcommand{\Prediction}{\mathit{Prediction}}
\newcommand{\PredictionList}{\mathit{PredictionList}}
\newcommand{\CategoriesProbability}{\mathit{CategoriesProbability}}
\newcommand{\Proportional}{\mathit{Proportional}}
\newcommand{\residual}{\mathit{residual}}
\newcommand{\ResultsFileName}{\mathit{ResultsFileName}}
\newcommand{\RefCategory}{\mathit{RefCategory}}
\newcommand{\RefCategProbability}{\mathit{RefCategProbability}}
\newcommand{\SAEM}{\mathit{SAEM}}
\newcommand{\Sex}{\mathit{Sex}}
\newcommand{\SizeArm}{\mathit{SizeArm}}
\newcommand{\State}{\mathit{State}}
\newcommand{\TimeUnit}{\mathit{TimeUnit}}
\newcommand{\Tlag}{\ensuremath{\mathit{T_{lag}}}}
\newcommand{\Transformation}{\mathit{Transformation}}
\newcommand{\Treat}{\mathit{Treat}}
\newcommand{\TreatSeq}{\mathit{TreatSeq}}
\newcommand{\Var}{\mathit{Var}}
\newcommand{\warfarindatatxt}{\mathit{warfarin\_data.txt}}
\newcommand{\Weight}{W}
\newcommand{\yes}{\mathit{yes}}
\newcommand{\xelem}[1]{\texttt{<#1>}\index{XML Element!\texttt{<#1>}}}
\newcommand{\xatt}[1]{\texttt{#1}\index{XML Attribute!\texttt{#1}}}
\newcommand{\var}[1]{\ensuremath{\mathit{#1}}\index{Symbol!\ensuremath{\mathit{#1}}}}
\newcommand{\dscol}[1]{\texttt{#1}}
\newcommand{\attval}[1]{``\texttt{#1}''}
%

% Sets the footnote marker to be symbols such as * instead of numbers
%\renewcommand*{\thefootnote}{\fnsymbol{footnote}}

\reversemarginpar  % Want "\watchout" to be put on the left, not the right.
\newcommand{\watchout}{\marginpar{\hspace*{34pt}\raisebox{-0.5ex}{\Large\ding{43}}}}
\newcommand{\contraversial}{\marginpar{\hspace*{34pt}\raisebox{-0.5ex}{\Large?}}}

%Counter for examples chap
\newcounter{examples}
\newcommand{\eglabel}[1]{\refstepcounter{examples}\label{egsec:#1}}
\newcommand{\egref}[1]{\ref{egsec:#1}}


\pagestyle{ruled}
\makechapterstyle{mymadsen}{% requires graphicx package
  \chapterstyle{default}
  \renewcommand*{\chapnamefont}{%
    \normalfont\Large\scshape\raggedleft}
  \renewcommand*{\chaptitlefont}{%
    \normalfont\Huge\bfseries\sffamily\raggedleft}
  \renewcommand*{\chapternamenum}{}
  \renewcommand*{\printchapternum}{%
    \makebox[20pt][l]{\hspace{0.4em}%
      \resizebox{!}{4ex}{%
        \chapnamefont\bfseries\sffamily\thechapter}%
    }%
  }%
  \renewcommand*{\printchapternonum}{%
    \chapnamefont \phantom{\printchaptername \chapternamenum%
      \makebox[0pt][l]{\hspace{0.4em}%
        \resizebox{!}{4ex}{%
          \chapnamefont\bfseries\sffamily 1}%
      }%
    }%
    \afterchapternum %
  }%
  \renewcommand*{\afterchapternum}{%
    \par\hspace{1.5cm}\hrule\vskip\midchapskip}}

\chapterstyle{mymadsen}

\setsecheadstyle{\Large\bfseries\raggedright\sffamily}
\setsubsecheadstyle{\large\bfseries\raggedright\sffamily}
\setsubsubsecheadstyle{\bfseries\raggedright\sffamily}
\setparaheadstyle{\bfseries\raggedright}
\setsubparaheadstyle{\bfseries\itshape\raggedright}
\setsubparaindent{0cm}

\setsecnumdepth{subsection}

% \renewcommand{\bibsection}{%
%   \chapter{\bibname}
%   \prebibhook}

\endinput