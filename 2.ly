\version "2.21.0"
\include "common.ly"

#(tocTime '(2 . 4))
% TODO header for powers of 2

\dscore
  "Ayoub" 
  "Turkish"
  #'(2 . 4) 
  ""
  \drummode {
    \repeat percent 3 { dum8.-> ka16 dum8-> tek-> | }
    dum16-> ka tek-> ka dum-> ka tek8-> |
  }
  
\dscore
  "Karachi"
  ""
  #'(2 . 4)
  "Ayoub inverted"
  \drummode {
    \repeat percent 3 { tek8.-> ka16 tek8-> dum-> | }
    tek16-> ka8 16 tek8-> dum-> |
  }
  
\dscore
  "[Khaliji] Malfouf"
  ""
  #'(2 . 4)
  \markup \column {
    \wordwrap { 
      In bars 1 & 2, the lower notes indicate the base rhythm
      while the upper notes fill in the \concat { \tiny \note { 16 } #1 } {s}
      with ka.
    }
    \null
    \line { \number 1 \hspace #0.5 Malfouf }
    \line { \number 2 \hspace #0.5 Khaliji Malfouf }
    \line { \number 3 \hspace #0.5 Semi-funk Malfouf }
    \line { \number 4 \hspace #0.5 Full Funk Malfouf }
    \line { \number 5 \hspace #0.5 Semi-funk Khaliji Malfouf }
    \line { \number 6 \hspace #0.5 Full Funk Khaliji Malfouf }
  }
  \drummode {
    \mergeDifferentlyDottedOn
    \set Score.markFormatter = #format-mark-numbers
    <<
      { dum16-> \parenthesize ka ka-- tek-> ka ka tek-> \parenthesize ka | 
        dum-> \parenthesize ka ka-- dum-> ka ka tek-> \parenthesize ka | } 
      \\
      { 
        \mark \default
        dum8. tek16 r8 tek \pbr
        \mark \default
        dum8. dum16 r8 tek | }
    >>
    \pbr
    \mark \default  % M-lf
    dum8-> ka16 tek-> ka8 tek-> |
    \pbr
    \mark \default  % M-funk
    dum8-> ka16 tek-> r ka tek8-> |
    \pbr
    \mark \default  % K-lf
    dum8-> ka16 dum-> ka8 tek-> |
    \pbr
    \mark \default  % K-funk
    dum8-> ka16 dum-> r ka tek8-> |
  }