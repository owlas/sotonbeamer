%% A beamer class for University of Southampton presentations
%% See license file
%%
%% Contributors:
%% Oliver Laslett and Jonothan Waters

\LoadClass{beamer}

% use latex serif font
\usefonttheme{professionalfonts} % using non standard fonts for beamer
\usefonttheme{serif}
\usepackage{fontspec}
\setmainfont{TeX Gyre Pagella}

% and for maths
\usepackage{unicode-math}
\setmathfont{TeX Gyre Pagella Math}

% colour tools
\usepackage{xcolor}
\usepackage{pgf} % use for transparency


%%%%%%%%%%%%%%
% Soton colourscheme

%primary palette:           RED    GREEN  BLUE
\definecolor{sotonblu}{rgb}{.00392 .26275 .34902} % soton blue
\definecolor{sotongrn}{rgb}{.00000 .44706 .45882} % soton green
\definecolor{sotoncya}{rgb}{.03922 .58824 .66275} % soton cyan
\definecolor{sotongry}{rgb}{.19608 .23922 .26275} % soton grey
\definecolor{sotonbei}{rgb}{.59216 .61961 .27059} % soton beige
\definecolor{sotonmet}{rgb}{.73333 .73333 .73333} % soton metal

%some secondary colors:
\definecolor{sotonyel}{rgb}{.99999 .70196 .00000} % soton yellow
\definecolor{sotonora}{rgb}{.99608 .24314 .07843} % soton orange
\definecolor{sotonred}{rgb}{.94118 .05882 .17255} % soton red
\definecolor{sotonrus}{rgb}{.67059 .07059 .06275} % soton russet
\definecolor{sotonbrn}{rgb}{.54118 .25490 .16863} % soton brown
\definecolor{sotonpnk}{rgb}{.88627 .41176 .62353} % soton pink
\definecolor{sotonppl}{rgb}{.32549 .12157 .26667} % soton purple
\definecolor{sotonbti}{HTML}{ccdaea} % soton blue tinted white


\setbeamertemplate{background canvas}[vertical shading][top=sotonblu,bottom=sotoncya]
\setbeamercolor{background canvas}{bg=}
\setbeamercolor{button border}{bg=sotonblu, fg=sotonblu}
\setbeamercolor{button}{bg=sotonblu, fg=DarkRed}

\setbeamercolor{frametitle}{fg=sotonyel}
\setbeamercolor{alerted text}{fg=sotonyel}
\setbeamercolor{normal text}{fg=white}
\setbeamercolor{titlelike}{fg=sotonbti}
\setbeamercolor{author}{fg=sotonbti}
\setbeamercolor{date}{fg=sotonbti}
\setbeamercolor{item}{fg=sotonbti}
\setbeamercolor{block title}{fg=sotonyel}

%%%%%%%%%%%%%%%%%%

%% Use a 10mm border
\setbeamersize{text margin left=10mm,text margin right=10mm}

%% turn off the presentation controls
\setbeamertemplate{navigation symbols}{}

% The title page template
\defbeamertemplate*{title page}{customized}[1][]
{
  \setbeamertemplate{headline}{}
  \setbeamertemplate{footline}{}
  \vspace{6mm}
  \usebeamerfont{title}\inserttitle\par
  \usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle\par
  \bigskip
  \usebeamerfont{author}\insertauthor\par
  \bigskip
  \usebeamerfont{institute}\insertinstitute\par
  \bigskip
  \usebeamerfont{date}\insertdate\par
}

% add the logo header and the footer
\setbeamertemplate{headline}{
        \vspace{5mm}
        \hspace{2pt}\hfill\includegraphics[height=7mm]{img/uos_white_large}
        \hspace{3.5mm}
        % logo on the right
}

\setbeamertemplate{footline}{
  \vskip-8pt
  \hspace{12cm} \insertframenumber/\inserttotalframenumber
	\vskip4pt
}


%% a new command to mark the backup slides
\newcommand{\backupbegin}{
   \newcounter{finalframe}
   \setcounter{finalframe}{\value{framenumber}}
}
\newcommand{\backupend}{
   \setcounter{framenumber}{\value{finalframe}}
}
