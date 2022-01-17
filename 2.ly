\version "2.21.0"
\include "common.ly"

#(tocTime '(2 . 4))
% TODO header for powers of 2

\dscore
  "Ayoub" 
  #'(2 . 4) 
  ""
  \drummode {
    \repeat percent 3 { dum8.-> ka16 dum8-> tek-> | }
    dum16-> ka tek-> ka dum-> ka tek8-> |
  }
  
\dscore
  "Karachi"
  #'(2 . 4)
  "Ayoub inverted"
  \drummode {
    \repeat percent 3 { tek8.-> ka16 tek8-> dum-> | }
    tek16-> ka8 16 tek8-> dum-> |
  }