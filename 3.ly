#(tocTime '(3 4))

\dscore
"Camel Walk"
"Warmup"
#'(3 . 8)
""
\drummode {
  dum8-> ka tek dum-> tek ka |
}

\dscore
"Vals"
"Turkish"
#'(3 . 4)
"Play only the accented notes for a simplified version"
\drummode {
  dum8.-> ka16 tek8-> ka tek-> ka |
}

\dscore
"Maqmaq"
""
#'(3 . 4)
""
\drummode {
  \repeat percent 3 {
    dum8-> ka tek ka tek ka |
  }
  dum4-> dum2-> |
}

bcore = \drummode { tek8 \tuplet 3/2 { dum16 fing fing } tek8 \tuplet 3/2 { ka16 tek ka } }

\dscore
"Bolero"
"Ravel"
#'(3 . 4)
""
\drummode {
  \bcore dum8 dum |
  \acciaccatura { fing32 32 }
  \bcore \tuplet 6/4 { tek16 ka tek ka tek ka } |
}
