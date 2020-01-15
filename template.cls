%% Author: Justin Huang

%--------------------------------------------------
%                 Identification
%--------------------------------------------------
\ProvidesClass{notes}[2020/01/15 Notes for Justin]
\NeedsTeXFormat{LaTeX2e}

%--------------------------------------------------                             
%                  Class Options
%-------------------------------------------------- 
% Inherit options of article
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

%--------------------------------------------------                             
%                    Packages
%-------------------------------------------------- 
\RequirePackage{amssymb} % used to renew nested unordered lists
\RequirePackage{xltxtra}
\RequirePackage{geometry}

%--------------------------------------------------                             
%                      Fonts
%--------------------------------------------------
% Change main font to VictorMono for ligatures
\setmainfont[Path = fonts/, UprightFont = *-Regular, BoldFont = *-Bold, ItalicFont = *-Italic] {VictorMono}

%--------------------------------------------------                             
%                  Layout Config
%-------------------------------------------------- 
% Notes info
\newcommand{\class}[1]{\def\@class{#1}}

% Change nested unordered lists and page layout
\renewcommand{\labelitemii}{$\blacksquare$}
\renewcommand{\labelitemiii}{$\square$}

% Custom Title Page
\renewcommand*{\maketitle}{%
	\begin{titlepage}
		\centering
		{\scshape\LARGE Pennsylvania State University \par}
		\vspace{1cm}
		{\scshape\Large\@class\unskip\strut\par}
		\vspace{1cm}
		{\huge\bfseries\@title\unskip\strut\par}
		\vspace{2cm}
		{\Large\itshape\@author\unskip\strut\par}
		\vfill
		{\large\@date\par}
	\end{titlepage}
}\endinput

\geometry{left=1cm, top = 1cm, right=1cm, bottom=1cm}

