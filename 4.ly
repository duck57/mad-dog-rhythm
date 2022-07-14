\version "2.21.0"
\include "common.ly"

#(tocTime '(4 . 4))

\dscore
"Maqsoum"
"Southern Egypt"
#'(4 . 4)  % time signature here
\markup \column {
  \line { Bar 1 is the normal pattern }
  \line { Bar 2 inverts the opening notes }
  \null
  \line { These are the foundation of many 
          \tiny \raise #1 \compound-meter #'(4 4) rhythms. }
}
\drummode {
  dum8-> tek4-> tek8-> dum4-> tek-> \pbr
  tek8-> dum4-> tek8-> dum4-> tek-> |
}

\dscore
"Beledi"
"Tribial Egyptian"
#'(4 . 4)
""
\drummode {
  dum8-> dum-> tek16 ka tek8-> dum-> tek16 ka tek4-> |
}

\dscore
"Saidi"
"Southern Egyptian"
#'(4 . 4)
""
\drummode {
  dum8-> tek-> tek16 ka dum8-> dum-> tek16 ka tek8-> tek16 ka |
}

\dscore
"Trad. Nawari"
"Tahitib Saidi"
#'(4 . 4)
""
\drummode {
  tek16-> ka dum8-> tek16-> ka tek8-> dum-> tek16 ka tek8-> tek16 ka |
}

\dscore
"Not Bolero"
"Madog"
#'(4 . 4)
"Ideal for stately marches"
\drummode {
  dum8-> tek16 ka tek8 ka tek ka tek ka |
}

\dscore
"Imperial March"
"John Williams"
#'(4 . 4)
""
\drummode {
  dum4-- 
  pop8 \tuplet 3/2 { ka16 tek ka } 
  tek8-- \tuplet 3/2 { ka16 tek ka } 
  \tuplet 3/2 { tek ka tek } dumt8-.-- |
  
  \acciaccatura ka8 dum4-> 
  tek8-^ \tuplet 3/2 { ka16 tek ka } 
  tek8---. \tuplet 3/2 { ka16 tek ka } 
  \tuplet 6/4 { tek ka tek ka tek ka } |
}

mas-three = \drummode {
  dum4-> dum-> dum-> tek8-> tek-> |
}
mas-k = \drummode {
  dum4-> dum-> tek16 ka tek ka tek4-> |
}
mas-two = \drummode {
  dum8-> ka ka tek-> ka ka tek-> ka \bar "||"
}
wahda = \drummode {
  dum4-> tek8 ka tek ka tek4-> |
  tek8 ka tek ka tek4-> tek8 ka |
}
wahda-s = \drummode {
  dum4-> ka8 tek-> tek-> ka ka4 |
  tek4-> tek-> ka tek-> |
}

\dscore
"Masmoudi [Kabir] & Wahda"
""
#'(4 . 4)
\markup { \column {
  \justify {
    These four patterns are variations on the Masmoudi & Wahda rhythms.
    Bars 1 & 2 are the first half of Masmoudi, while bars 3 & 4 are Wahda
    (which is the \concat { 2 { \super nd }} half of the full Masmoudi)
    with a double bar in the middle for clarity.
  }
  \null
  \justify { 
    Both the Masmoudi and Wahda halves each have two variations.  All four combinations
    are written out above for ease of sight reading.  The Masmoudi variations are marked
    with {\bold 3} and {\bold K} while the Wahdas are marked with {\bold W} and {\bold S}.
  }
  \null
  \fill-line { 
    \hspace #1
    \column {
      \line { \right-align \larger \bold K }
      \line { \right-align \larger \bold 3 }
      \line { \right-align \larger \bold W }
      \line { \right-align \larger \bold S }
    }
    % \hspace #1
    \column {
      \line { Masmoudi Kabir }
      \line { 3-Dum Masmoudi }
      \line { Wahda }
      \line { Syncopated show-off Wahda }
    }
    \hspace #10
    \null \null \null
  }
}}

\drummode {
  \mark "KW"
  \mas-k
  \mas-two
  \wahda
  \pbr \break
  \mark "3W"
  \mas-three
  \mas-two
  \wahda
  \pbr \break
  \mark "3S"
  \mas-three
  \mas-two
  \wahda-s
  \pbr \break
  \mark "KS"
  \mas-k
  \mas-two
  \wahda-s
}

\dscore
"Dirge"
"Pakastani/SCA"
#'(4 . 4)
"Pass the solo every 3 bars"
\drummode {
  \repeat percent 3 { dum16-> ka tek ka tek ka dum-> ka tek ka tek ka tek-> ka tek ka | }
}

didadi-core = \drummode {
  dum8 tek16 ka r ka8 ka16 tek4
}
\dscore
"Di Da Di"
""
#'(4 . 4)
""
\drummode {
  \didadi-core tek4 |
  \didadi-core dum8 dum |
}

\dscore
"Afronegro"
""
#'(4 . 4)
""
\drummode {
  dum8. dum16 dumt4 tek tek |
}
