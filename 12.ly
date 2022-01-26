\version "2.21.0"
\include "common.ly"

#(tocTime '(12 8))

\dscore
\markup { Daveed {\tiny \raise #1 \compound-meter #'(6 8)} }
"Moroccan"
#'(12 . 8)
""
\drummode {
  dum8.-> ka8-> ka16 dum4-> ka8->
  dum8.-> ka8 ka16 dum8-> ka-> ka-> |
}

\dscore
"Chaka"
"SCA"
#'(12 . 8)
""
\drummode {
  dum8-> tek16 ka tek ka tek8-> tek16-> ka tek ka
  dum8-> tek16 ka tek8-> tek16 ka dum8-> ka-> |
}

\dscore
"Tiriba"
"Melenke"
#'(12 . 8)
""
\drummode {
  \mark "R"
  \partial 8 \tuplet 3/2 { ka16 tek ka }
  tek8 ka tek ka4 tek8 ka4 tek8 r4 
  \bar "[|:"
  \mark "1" \repeat unfold 2 { dum8 |
  ka4 dum8 ka4 dum8 ka tek4 ka4 }
  \pbr \mark "2" 
  \repeat unfold 2 { dum8 |
  r4 dum8 ka4 dum8 r4 dum8 ka4 } \bar ":|]" r8 \bar "[|:"
  \mark "3"
  \repeat unfold 2 { r4 pop8 r[ dumt dum] r[ pop r] r[ dumt dum] | }
}
