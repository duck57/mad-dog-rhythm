\version "2.21.0"
\include "common.ly"

#(tocTime '(5 . 4))
  
\dscore
  "Where is the drum circle?"
  #'(5 . 4)
  ""
  <<
    \new DrumVoice = "d-circle" \drummode {
      \stemUp
      dum4 tek8 tek r dum tek4 dum |
    }
    \new Lyrics \lyricsto "d-circle" {
      Where is the drum cir -- cle?
    }
  >>
  
\dscore
  "Snoop"
  #'(5 . 4)
  ""
  <<
    \new DrumVoice = "snoop" \drummode {
      \stemUp
      dum8 dum r tek pop4 tek8 ka tek ka |
    }
    \new Lyrics \lyricsto "snoop" {
      I like to smoke mar -- i -- juan -- a
    }
  >>
  
\dscore
  "Mars"
  #'(5 . 4)
  ""
  \drummode {
    \tuplet 3/2 { dum8 tek ka } tek4 pop dum8 dum tek4 |
  }