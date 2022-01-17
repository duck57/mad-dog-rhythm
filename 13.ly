\version "2.21.0"
\include "common.ly"

#(tocTime '(13))

\dscore
  "Terminal A"
  #'(13 . 16)  % time signature here
  ""
  \drummode {
    dum16[ tek ka] dum[ tek ka] dum[ ka tek ka] dum[ tek ka] |
  }
  
\dscore
  "Terminal MT"
  #'(13 . 16)  % time signature here
  ""
  \drummode {
    dum8[ dum16(--] tek8)-^[ \parenthesize ka16]( dum8[) dum] tek16[( \parenthesize ka8]) |
  }
