\version "2.21.0"
\include "common.ly"

#(tocTime '(4 2))

\dscore
"Sirto"
""
#'(4 . 2)
""
\drummode {
  dum8-> ka ka dum-> ka ka tek-> ka 
  dum-> ka ka tek-> ka ka tek-> ka |
}

\dscore
"Sneaky Greeky"
"Zorba Dance"
#'(4 . 2)
""
\drummode {
  dum4-> tek8-> tek-> dum4-> tek-> dum8-> ka tek ka dum-> ka tek4-> |
}

\dscore
"Chiftitelli"
"Greek"
#'(4 . 2)
"Play only the accented notes for a simpler rhythm"
\drummode {
  dum4-> \parenthesize ka tek8-> \parenthesize ka tek4-> 
      dum-> dum-> pop \parenthesize tek8 \parenthesize tek | }

\dscore
"Sombati"
""
#'(4 . 2)
""
\drummode {
  dum4-> ka tek8-> ka tek4->
  dum-> ka8 ka tek4-> ka8 ka |
}