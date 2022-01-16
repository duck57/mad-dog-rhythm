\version "2.21.0"
\header {
  title = "Madog's Mad Rhythm Sheet"
  composer = "Mad Dog"
  arranger = "Dr. Duck"
  dedication = "I love drumming!"
  instrument = "Doumbek"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}
\paper {
  tocItemMarkup = \tocItemWithDotsMarkup
}

\markuplist \table-of-contents

%{ 
===== Doumbek to Timbales translation table ======
timl = Dum
ssh = tek
ssl = ka
cb = pop
%}

#(define doumbek '(
                    (dum	default	#f	-1)
                    (tek	cross	#f	1)
                    (ka	cross	#f	2)
                    (pop	triangle	#f	2)))
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
    (add-text perf-notes)))

\dscore
  "Ambitus"
  #'(4 . 4)
  ""
  <<
    \new DrumVoice = "ambitus" \drummode {
      \stemUp
      dum8 r r tek r ka r pop
    }
    \new Lyrics \lyricsto "ambitus" {
      dum tek ka pop
    }
  >>
  
\tocItem \markup "Powers of 2"

\tocItem \markup { \musicglyph "two" \musicglyph "four" }
\markup { "test 12" }

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
  
  
\dscore
  "Don't Take Five"
  #'(4 . 4)
  "Best when swung"
  <<
    \new DrumVoice = "dt-five" \drummode {
      \stemUp
      dum4 dum dum8 \parenthesize ka r dum |
      r dum r tek pop dum dum \parenthesize ka |
    }
    \new Lyrics \lyricsto "dt-five" {
      …don't take five, ___ take what you want!  I said…
    }
  >>
  
\dscore
  "Take Five"
  #'(5 . 4)
  ""
  \drummode {
    dum8 tek r dum tek4 dum tek |
  }
  
\dscore
  "Where is the drum circle?"
  #'(5 . 4)
  ""
  <<
    \new DrumVoice = "d-circle" \drummode {
      \stemUp
      dum4 tek8 tek r dum tek4 dum |
    }
    \new Lyrics \lyricsto "d-circle" {
      Where is the drum cir -- cle?
    }
  >>
  
\dscore
  "Train"
  #'(7 . 4)
  ""
  \drummode {
    dum4 tek dum tek8 tek dum4 tek dum8 tek |
  }


\layout { }
\midi { \tempo 4 = 120 }
