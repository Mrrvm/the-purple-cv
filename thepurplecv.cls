\ProvidesClass{thepurplecv}[2019 thepurplecv class]

\LoadClass[11pt,letterpaper]{article}
\usepackage[utf8]{inputenc}
\usepackage[margin=0cm]{geometry}
\usepackage[parfill]{parskip}
\usepackage{xcolor}
\usepackage{graphicx}
\usepackage{float}
\usepackage{hyperref}
\usepackage{enumitem}
\usepackage{fontawesome}
\usepackage{graphbox}
\usepackage{blindtext}

\setlist[itemize]{leftmargin=*}
\pagestyle{empty}
\renewcommand{\familydefault}{\sfdefault}
\definecolor{mygray}{RGB}{54, 54, 54}
\definecolor{myothergray}{RGB}{215,215,215}


\def \name #1 {\def\@name{#1}}
\def \@name {}

\def \printname {
  \begingroup
    \colorbox{mygray}{
        \begin{minipage}{\linewidth}%
            \vspace*{30pt}
                \hfill\textcolor{white}{\huge\bf \@name}\hspace*{30pt}
            \vspace*{30pt}
        \end{minipage}
        }
        \vspace*{10pt}
  \endgroup
}

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  
  \printname 
  \color{mygray}
}

\newenvironment{aboutme}[2]{
  \colorbox{myothergray}{
  \begin{minipage}{\textwidth}
    \vspace*{30pt}
    \hspace*{40pt}
    \Large\textbf{#1} \\ \vfill
    \begingroup
    \normalsize #2\hspace*{30pt}
    \leftskip4em
    \rightskip\leftskip
    \par
    \endgroup
    \vspace*{30pt}
  \end{minipage}
  }
}

\newenvironment{purplesectionleft}[3]{ 
  \vspace*{20pt}
  \hspace*{20pt}
  \begin{minipage}{0.2\textwidth}
    \includegraphics[width=0.9\textwidth]{#2}
  \end{minipage} \hfill
  \begin{minipage}{0.7\textwidth}
    \Large\textbf{#1} \\ \vfill
    \normalsize #3\hspace*{30pt}
  \end{minipage}
}

\newenvironment{purplesectionright}[3]{ 
  \vspace*{20pt}
  \hspace*{40pt}
  \begin{minipage}{0.7\textwidth}
    \Large\textbf{#1} \\ \vfill
    \normalsize #3
  \end{minipage} \hspace*{15pt}
  \begin{minipage}{0.2\textwidth}
        \includegraphics[width=0.9\textwidth]{#2}
  \end{minipage} 
}


