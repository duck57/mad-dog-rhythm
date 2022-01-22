#(tocTime '(9 . 8))

\dscore
"Blue Rondo à la Turk"
"Dave Brubeck"
#'(9 . 8)
""
\drummode {
  \time 2,2,2,3 9/8
  dum8 ka tek ka dum ka dum ka tek |
  tek ka tek ka tek ka dum ka ka |
  dum ka dum ka tek ka tek ka ka |
  \once \override Score.TimeSignature.stencil = ##f
  \time 9/8
  dum ka ka dum ka ka dum ka ka |
}

\dscore
"Karsilama"
"Turkish"
#'(9 . 8)
""
\drummode {
  \time 2,2,2,3 9/8
  dum8-> tek16 ka tek8-> tek16 ka dum8-> tek16 ka tek8-> tek-> tek-> |
}

\dscore
"Gypsy 9"
""
#'(9 . 8)
""
\drummode {
  \time 2,2,2,3 9/8
  dum8-> tek16 ka dum8-> tek16 ka tek8-> tek16 ka tek8-> tek4 |
}

\dscore
"3-Dum Gypsy 9"
""
#'(9 . 8)
""
\drummode {
  dum8-> dum-> dum-> tek16 ka tek-> ka tek ka tek8-> tek-> tek16 ka |
}

\dscore
"Zeybek"
"Zembekiko"
#'(3 . 4)
""
\drummode {
  dum8-> tek-> r tek-> dum4-> |
  tek-> dum8-> tek-> r tek-> |
  dum4-> tek16 ka tek ka tek4-> |
}

\dscore
"Syncopated 9"
""
#'(9 . 8)
\markup { \concat { 2 {\super nd} } dum is optional }
\drummode {
  \time 2,2,3,2 9/8
  dum8-> \parenthesize dum-> dum-> tek16 ka tek-> fing fing tek-> fing fing tek4-> |
}
