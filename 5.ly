\version "2.21.0"
\include "common.ly"

#(tocTime '((5  4) (10 8)))
  
\dscore
  "Where is the drum circle?"
  ""
  #'(5 . 4)
  ""
  <<
    \new DrumVoice = "d-circle" \drummode {
      \stemUp
      dum4 ka8 ka r dum ka4 dum |
    }
    \new Lyrics \lyricsto "d-circle" {
      Where is the drum cir -- cle?
    }
  >>
  
\dscore
  "Snoop"
  ""
  #'(5 . 4)
  ""
  <<
    \new DrumVoice = "snoop" \drummode {
      \stemUp
      dum8 dum r ka pop4 tek8 ka tek ka |
    }
    \new Lyrics \lyricsto "snoop" {
      I like to smoke mar -- i -- juan -- a
    }
  >>
  
\dscore
  "Mars"
  "Gustav Holst"
  #'(5 . 4)
  ""
  \drummode {
    \tuplet 3/2 { dum8 ka ka } tek4-- pop dumt8 dum ka4 |
  }
  
  
\dscore
"Slow 5"
"Turkish"
#'(5 . 4)
""
\drummode {
  dum4-> ka8 tek4-> ka8 tek-> ka dum4-> |
}

\dscore
"Fast 5"
""
#'(5 . 8)
\markup \column { 
  \line { Can be played simultaneously with two players. }
  \line { Either bar can be played separately as its own pattern. }
}
\drummode {
  \time 2,3 5/8
  dum8-> ka dum-> ka ka \bar "||"
  dum-> ka tek-> ka tek-> |
}

\dscore
"Dark Crystal Celebration"
""
#'(5 . 4)
""
\drummode {
  dum4-> tek8 ka dum4-> tek-> tek-> |
}

\dscore
"Shoush"
""
#'(5 . 4)
""
\drummode {
  dum4-> tek8 ka tek ka dum4-> tek-> |
}
