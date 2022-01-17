\version "2.21.0"
\include "common.ly"

#(tocTime '(11))

\dscore
  "I Like You"
  #'(11 . 16)  % time signature here
  ""
  \drummode {
    dum8[ tek] tek[ dum16 tek8] tek |
  }
  
\dscore
  "Chicken & Rice"
  #'(11 . 16)
  ""
  \drummode {
    dum8[ dum] tek16[ ka8] dum[ tek] |
  }


\dscore
  "Like Chicken Fusion"
  #'(11 . 16)
  ""
  \drummode {
    dum8--[ dum-.] tek16[( ka) dum-.] tek8--[ tek--] |
  }
