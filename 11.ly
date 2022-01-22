\version "2.21.0"
\include "common.ly"

#(tocTime '(11))

\dscore
  "I Like You"
  ""
  #'(11 . 16)  % time signature here
  ""
  \drummode {
    \time 4,3,4 11/16
    dum8 tek tek dum16 tek8 tek |
  }
  
\dscore
  "Chicken & Rice"
  ""
  #'(11 . 16)
  ""
  \drummode {
    \time 4,3,4 11/16
    dum8 dum tek16 ka8 dum tek |
  }


\dscore
  "Like Chicken Fusion"
  ""
  #'(11 . 16)
  "Fusion of the previous two patterns"
  \drummode {
    \time 4,3,4 11/16
    dum8-- dum-. tek16( ka) dum-. tek8-- tek-- |
  }
