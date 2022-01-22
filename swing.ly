\version "2.21.0"
\include "common.ly"

#(tocSuper "Swung Rhythms")

\explanation-text \markuplist {
  These are the only rhythms which are best when swung.
  Rhythms elsewhere in this book should be played with straight \concat { \tiny \note { 8 } #1 } {s.}
  Swapping which are played straight and which are swung may lead to pleasing results, but
  they will be different than the intended rhythm on the page.  
  % #(draw-fractional-time-signature 9 3/4 8)
}

\dscore
"Don't Take Five"
"The Justified Ancients of Mu-Mu"
#'(4 . 4)
""
<<
  \new DrumVoice = "dt-five" \drummode {
    \stemUp
    dum4 dum dum8 \parenthesize ka r dum |
    r dum r tek pop dum dum \parenthesize ka |
  }
  \new Lyrics \lyricsto "dt-five" {
    …don't take five, ___ take what you want!  I said…
  }
>>

\dscore
"Take Five"
"Dave Brubeck"
#'(5 . 4)
""
\drummode {
  dum8( tek)-> r dum-.->( tek4--) dum-- tek |
}

\dscore
"Not Bolero"
"Madog"
#'(4 . 4)
""
\drummode {
  dum8-> tek16 ka tek8 ka tek ka tek dum-> |
}