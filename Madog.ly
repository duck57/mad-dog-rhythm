\version "2.21.0"
\include "common.ly"

%{
\paper block is in common.ly
%}

fractional-time-demo = \relative c' {
  \fractionalTime 2 #1/2 4
  c8 d e f4 |
  g a8[ b c] |
  \fractionalTime 3 #3/4 4
  \time 8,7 15/16
  \repeat unfold 2 { c,8 d e f g a b c16 | }
  \key f \minor
  \fractionalTime 2 #3/4 4
  \time 4,3,4 11/16
  \repeat unfold 3 { bes8 bes' aes ees16 bes'8 aes | }
  \key e \major
  gis,8 gis' fis cis16 gis'8 fis \bar "|."
}

\header {
  title = "Madog's Mad Rhythm Sheet"
  composer = "Mad Dog"
  arranger = "Dr. Duck"
  poet = "Wahru"
  subtitle = "I love drumming!"
  dedication = \markup \center-column {
    "To those who find"
    \score {
      \layout {
        #(layout-set-staff-size 12)
        line-width = #111
      }
      \fractional-time-demo 
    } 
    "to be fun to play."
  }
  %instrument = "Doumbek"  % rather unnecessary in the header
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
  meter = ""
  subsubtitle = "A potpourri of rhythm"
  copyright = "Compiled & Typeset 2022"
}

amb-music = <<
  \new DrumVoice = "ambitus" \drummode {
    \stemUp
    dum8 \parenthesize dumt r tek r ka r pop 
    fing32( 32 32 32 8) r fd32( 32 32 32 2)
  }
  \new Lyrics \lyricsto "ambitus" {
    dum _ tek ka pop finger -- rolls
  }
>>

ambitus = \dscore
  "Ambitus"
  ""
  #'(4 . 4)
  \markup { \column { 
    \line { Top line is for the top hand }
    \line { Bottom line is for the primary drumming hand }
  }}
  \amb-music
  
%{
\explanation-text \markuplist { 
  Test test test
}
%}

\tocItem "Table of Contents"
\markuplist \table-of-contents

\include "swing.ly"

#(tocSuper "Powers of 2")
\include "2.ly"
\include "4.ly"
\include "8.ly"

#(tocSuper "Multiples of 3")
\include "3.ly"
\include "6.ly"
\include "9.ly"
\include "12.ly"

#(tocSuper "Odd Couples")
\include "5.ly"
\include "10.ly"
\include "7.ly"

#(tocSuper "Broken Bars")
\explanation-text \markuplist {
    Unlike the Odd Couples, these bars do { \italic not } use their numerator in the time
    signature as the number of beats in the bar.  Rather, they instead have beats of unequal
    durations.
  }
\include "11.ly"
\include "13.ly"
\include "15.ly"
%\include "17.ly"
%\include "19.ly"

%\include "bizarre.ly"

%\include "long.ly"

\layout { }
\midi { \tempo 4 = 120 }
