\version "2.21.0"
\include "common.ly"

#(tocTime '(6 8))

\dscore
\markup { Easiest Moroccan {\tiny \raise #1 \compound-meter #'(6 8)} }
""
#'(6 . 8)
""
\drummode {
  dum8-> tek16 ka tek ka dum8-> ka-> tek-> |
}

\dscore
\markup { Easy Moroccan {\tiny \raise #1 \compound-meter #'(6 8)} }
"Whirlwinds DVD"
#'(6 . 8)
""
\drummode {
  dum8-> tek16 ka tek ka dum8-> tek16 ka tek8-> |
}

\dscore
\markup { Rayquay {\tiny \raise #1 \compound-meter #'(6 8)} }
"Moroccan"
#'(6 . 8)
""
\drummode {
  dum16-> ka tek ka tek ka dum-> ka ka tek-> ka ka |
}

\dscore
\markup { Persian {\tiny \raise #1 \compound-meter #'(6 8)} }
""
#'(6 . 8)
""
\drummode {
  dum8-> ka16 tek-> ka8 dum-> tek16 ka tek ka |
}

\dscore
"I like to play"
"Wahru"
#'(6 . 8)
""
<<
  \new DrumVoice = "play" \drummode {
    \partial 8
    \stemUp
    dumt8 dum4 ka8 tek4 dumt8 |
    dum4 ka8 tek4
  }
  \new Lyrics \lyricsto "play" {
    I like to play. I like to play.
  }
>>

\dscore
"I like you"
"Wahru"
#'(6 . 4)
""
<<
  \new DrumVoice = "like-u" \drummode {
    \stemUp
    dum4 dum dum dum8 ka r ka r ka |
  }
  \new Lyrics \lyricsto "like-u" {
    I like you, you like me (and)
  }
>>

\dscore
"Chicken & Rice"
""
#'(6 . 4)
""
<<
  \new DrumVoice = "chicken-rice" \drummode {
    \stemUp
    dum4 dum dum8 ka r ka r ka r ka |
    dum4 dum dum8 ka r ka r ka r ka |
  }
  \new Lyrics \lyricsto "chicken-rice" {
    I like chick -- en and rice and
    You like chick -- en and rice and
  }
>>

\dscore
"C+R Remix"
"Dr. Duck"
#'(6 . 4)
""
\drummode {
  dum4-> \acciaccatura ka8 dum4-> dum8 ka tek ka-> r \acciaccatura ka dum r ka-> |
}
