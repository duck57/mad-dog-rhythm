\version "2.21.0"
\include "common.ly"

#(tocTime '((7) (14)))

\dscore
"Train"
"Dr. Duck"
#'(7 . 4)
""
\drummode {
  dum4 pop dum ka8 ka dum4 ka dum8 ka |
}

\dscore
"Turbo Bass 14"
"Dr. Duck"
#'(7 . 4)
"The second section show the underlying structure of the same 14 beats."
\drummode {
  dum2-> r8 dum r dum ka2 r8 dum |
  r dum ka2 r8 dum r dum ka2 \bar ":|][|:"
  \time 4/4
  dum2-> r8 dum[ r dum] |
  ka2 r8 dum[ r dum] |
  ka2 r8 dum[ r dum] \time 2/4 ka2 |
}

\dscore
"Turbo Bass 7"
"Dr. Duck"
#'(7 . 4)
\markup \column {
  \line { Patterns are marked as B and L for Big or Little endian, respectively. }
  \line { As elsewhere in this book, the second iteration shows the underlying structure. }  
}
\drummode {
  \mark B
  dum2-> r8 dum[ r dum] ka4-> r8 ka[ r ka] \bar ":|][|:"
  \mark L
  dum4-> r8 dum[ r dum] ka2-> r8 ka[ r ka] \bar ":|][|:"
  \mark B \time 4/4
  dum2-> r8 dum[ r dum] |
  \time 3/4
  ka4.-> ka4 ka8 \bar ":|][|:"
  \mark L \time 3/4
  dum4.-> dum4 dum8 |
  \time 4/4
  ka2-> r8 ka[ r ka] |
}

\dscore
"Yes I Really Can"
"Dr. Duck"
#'(7 . 4)
"Pairs well with the turbo bass 7, turbo bass 14, Train, or offbeat 7."
<<
  \new DrumVoice = "yes" \drummode {
    \stemUp
    tek8 ka tek4 dum8 ka tek ka dum4 tek8 ka tek4 |
  }
  \new Lyrics \lyricsto "yes" {
    Yes I can.  Yes I real -- ly can.  Yes I did.
  }
>>

\dscore
"Offbeat 7"
"Dr. Duck"
#'(7 . 4)
"Needs another player on another rhythm to feel complete"
\drummode {
  r8 dum ka tek ka4 r r8 dum ka4 ka |
}

\dscore
"Daveed's 28"
"SCA"
#'(7 . 8)
"Each bar can be played as its own loop as well"
\drummode {
  \time 2,2,3 7/8
  dum8-> ka dum-> ka tek-> ka ka |
  tek-> ka dum-> ka tek-> ka ka |
  tek-> ka tek-> ka tek-> ka ka |
  dum-> ka dum-> ka dum-> ka ka |
}

\dscore
"Kalamatiano"
"Greek"
#'(7 . 8)
""
\drummode {
  \time 3,2,2 7/8
  dum8-> ka ka dum-> ka tek-> ka |
}

\dscore
"Laz"
""
#'(7 . 8)
""
\drummode {
  \time 2,2,3 7/8
  dum8-> ka tek-> ka dum-> ka ka |
}

