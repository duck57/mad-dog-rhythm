\version "2.21.0"
\include "common.ly"

#(tocTime '(13))

\dscore
  "Terminal A"
  "Dr. Duck"
  #'(13 . 16)  % time signature here
  ""
  \drummode {
    \time 3,3,4,3 13/16
    dum16 tek ka dum tek ka dum ka tek ka dum tek ka |
  }
  
\dscore
  "Terminal MT"
  "Dr. Duck"
  #'(13 . 16)  % time signature here
  ""
  \drummode {
    \time 3,3,4,3 13/16
    dum8 dum16\(-- tek8\)-^ \parenthesize ka16( dum8) dum tek16( \parenthesize ka8) |
  }
