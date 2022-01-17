\version "2.21.0"

superHeaderFormat = 
#(define-scheme-function (text) (markup?)
   #{
     \markup \large \column {
       \hspace #1
       \fill-line { \null \italic #text \null }
       \hspace #1
     }
   #})

\paper {
  tocItemMarkup = \tocItemWithDotsMarkup
  tocSuperMarkup = \superHeaderFormat \markup { \fromproperty #'toc:text }
  tocTimeMarkup = \markup \column {
    \fill-line { \null \fromproperty #'toc:text \null \null \fromproperty #'toc:text \null }
  }
}

sLine = \markup {
  \override #'(thickness . 5)
  \translate #'(0 . -1)
  \draw-squiggle-line #0.5 #'(6 . 0) ##t
}

tocSuper = 
#(define-scheme-function (text) (markup?)
   (let ((formatted-text 
          (superHeaderFormat text)))
     (add-text #{ \markup \fill-line {
       \sLine
       \superHeaderFormat \markup { \concat { \sLine #text \sLine } }
       \sLine
       } #})
     ; (superHeaderFormat text))
     (add-toc-item! 'tocSuperMarkup text)))

tocTime = 
#(define-scheme-function (time) (scheme?)
   (let ((as-time
          #{ \markup \compound-meter $time #}))
     (add-toc-item! 'tocTimeMarkup as-time)
     (add-text #{ \markup \column { \vspace #1 \fill-line { 
       \null % \null \null
       $as-time % left
       \rotate #-45 { $as-time } 
       \rotate #-90 { $as-time } 
       \null \null \null
       \rotate #90 { $as-time } 
       \rotate #45 { $as-time } 
       $as-time % right
       \null % \null \null
                                    } \vspace #2 } #})))

#(define doumbek '(
                    (dum	default	#f	-1)
                    (tek	cross	#f	1)
                    (ka	cross	#f	2)
                    (pop	triangle	"accent"	2)))
drumPitchNames.dum = #'dum
drumPitchNames.tek = #'tek
drumPitchNames.ka  = #'ka
drumPitchNames.pop = #'pop

% define the Scheme \score template
dscore =
#(define-scheme-function
  (title ts perf-notes music)
  (markup? fraction? markup? ly:music?)
  (let ((score 
         #{
           \score {
             \header { piece = $title }
             \new DrumStaff \with {
               %instrumentName = "doumbek"
               \override StaffSymbol.line-count = #2
               \override BarLine.bar-extent = #'(-1 . 1)
               drumStyleTable = #(alist->hash-table doumbek) 
             } {
               \tocItem \markup $title
               \numericTimeSignature
               \stemUp
               \time $ts
               \set countPercentRepeats = ##t
               $music 
               \bar ":|." 
             }
           }
         #}))
    (add-score score)
    (add-text #{ \markup { \hspace #10 $perf-notes } #})))


to-internal-ts = 
#(define-scheme-function
  (top partial bottom)
  (integer? rational? integer?)
  (let
   ((internal-ts
     (+ (/ top bottom) (* partial (/ 1 bottom)))))
   (cons (numerator internal-ts) (denominator internal-ts))))


draw-fractional-time-signature =
#(define-scheme-function
  (top partial bottom)
  (integer? rational? integer?)
  #{
    \markup \override #'(baseline-skip . 0) \center-column \number {
      \concat  { #(number->string top) \magnify #0.5 \pad-x #-.2 {
        \translate #'(0 . 1) #(number->string (numerator partial))
        \translate #'(-1 . 0) \override #'(thickness . 2) \draw-line #'(1 . 2) 
        \translate #'(0 . 0) #(number->string (denominator partial)) }} 
      #(number->string bottom) }
  #})


fractionalTime = 
#(define-music-function
  (top partial bottom)
  (integer? rational? integer?)
  #{
    \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
    \once \override Staff.TimeSignature.text = \draw-fractional-time-signature $top $partial $bottom
    \time #(to-internal-ts top partial bottom)
  #})

