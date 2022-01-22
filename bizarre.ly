\version "2.21.0"
\include "common.ly"

#(tocSuper "Bizarre Beats")

\explanation-text \markuplist {
  Beats with time signatures such as 
  { \raise #1 \tiny #(draw-fractional-time-signature 9 3/4 11) } or 
  \concat { \raise #1 \tiny \compound-meter #'((5 6) (3 4)) .}
  These are more than just a broken bar of uneven beat durations.
  Rather, they are a special case of broken bars where there are
  unfinished tuplets involved.
}

\dscore
"Test"
"n/a"
#'(5 . 6)
""
\drummode {
  tek4. ka8 \tuplet 3/2 { dum4 dum } |
}
  
