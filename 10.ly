\version "2.21.0"
\include "common.ly"

%#(tocTime '(10))

\dscore
  "Turbo Bass 10"
  "Dr. Duck"
  #'(5 . 4)  % time signature here
  "The second section show the underlying structure of the same 10 beats."
  \drummode {
    dum4-> r8 dum-- r dum-.( ka4-^) r8 dum8-- |
    r dum-.( ka4-^) r8 dum-. r dum( ka4->) \bar ":|][|:"
    \time 3/4
    dum4.-> dum4-- dum8-.( |
    pop4.) dum4-- dum8-.( |
    ka4.)-^ dum4-. dum8( |
    \time 1/4 ka4->)
  }
  
\dscore
"Samai"
"Turkish"
#'(3 . 4)
""
\drummode {
  dum8-> tek16 ka tek8-> ka tek4-> |
  tek8-> tek16 ka tek8-> ka dum4-> |
  \time 4/4
  dum-> tek8-> tek16 ka tek8 ka tek ka |
}

\dscore
"Curcuna"
"Armenian"
#'(10 . 8)
"Play only the accented notes for a simpler rhythm"
\drummode {
  \time 3,2,2,3 10/8
  dum8-> ka ka tek-> ka dum-> ka tek-> ka ka |
}

\dscore
"Syncopated Curcuna"
""
#'(10 . 8)
""
\drummode {
  \time 3,3,4 10/8
  dum8-> ka ka tek-> ka ka tek ka tek ka |
}