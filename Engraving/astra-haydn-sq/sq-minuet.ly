\version "2.26.0"
\language "nederlands"

% Transcribed from the two-page scan sq-minuet.pdf (printed pp. 7-8).
% No composer attribution is supplied on those pages.
% Written bar numbers restart at the Trio and count both alternate endings.
% Worn glyphs are read using staff position, parallel passages, and harmony.
% Menuetto m.16, viola: final d'4 restored as a worn quarter note.
% Pitch revision details and editorial readings are in engraving-notes.txt.
% See engraving-notes.txt for source conventions and reproduction commands.

#(set-global-staff-size 17)
\pointAndClickOff

\header {
  title = "Menuetto & Trio"
  subtitle = "for String Quartet"
  composer = ##f
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 13\mm
  bottom-margin = 13\mm
  left-margin = 17\mm
  right-margin = 15\mm
  indent = 18\mm
  short-indent = 9\mm
  print-page-number = ##t
  print-first-page-number = ##f
  ragged-last-bottom = ##f
  system-system-spacing = #'((basic-distance . 23) (minimum-distance . 18) (padding . 4) (stretchability . 14))
  score-system-spacing = #'((basic-distance . 18) (minimum-distance . 14) (padding . 3) (stretchability . 6))
  top-system-spacing = #'((basic-distance . 10) (minimum-distance . 8) (padding . 1))
  oddHeaderMarkup = \markup \unless \on-first-page \fill-line { "" \small "MENUETTO & TRIO" \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \small "MENUETTO & TRIO" "" }
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f
}

\layout {
  \context {
    \Score
    \override BarNumber.font-size = #-1
    \override BarNumber.padding = #2
    \override RehearsalMark.self-alignment-X = #LEFT
    \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
    \override TupletBracket.bracket-visibility = ##f
    \override TupletNumber.font-size = #-1
  }
  \context {
    \Staff
    \override DynamicLineSpanner.staff-padding = #2.5
    \override InstrumentName.font-size = #-1
  }
  \context {
    \StaffGroup
    \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 12) (minimum-distance . 10) (padding . 2) (stretchability . 4))
  }
}

menuettoGlobal = { \key es \major \time 3/4 }
trioGlobal = { \key bes \major \time 3/4 }

menuettoBreaks = {
  s2.*5 \break \grace { s4 }
  s2.*5 \break
  s2.*4 \pageBreak
  s2.*4 \break
  s2.*5 \break
  s2.*5
}

menuettoViolinOne = \absolute {
  \menuettoGlobal
  \tupletUp
  \repeat volta 2 {
    bes'4(\p es''4) g''4-. | % 1
    g''4( aes''8.)[ g''16 f''8. es''16] | % 2
    d''4( f''4) bes''4-. | % 3
    aes''4( g''8.)[ f''16 es''8. d''16] | % 4
    c''4( c'''4) c'''4-. | % 5
    \appoggiatura es''4 d''2 \acciaccatura f''8 \tuplet 3/2 { es''8([ d'' c'']) } | % 6
    bes'4\f \tuplet 3/2 { aes''8([ f'' aes'']) } g''4 | % 7
    bes'4 \tuplet 3/2 { aes''8([ f'' aes'']) } g''4 | % 8
    bes''4 aes''8.[ g''16 f''8. es''16] | % 9
    \appoggiatura es''4 d''2 r4 | % 10
  }
  \repeat volta 2 {
    R2. | % 11
    R2. | % 12
    c'''4 c'''4 c'''4 | % 13
    c'''4( d'''8.)[ c'''16 bes''8. a''16] | % 14
    g''4 g''4 \tuplet 3/2 { bes''8([ a'' g'']) } | % 15
    g''8([ f'']) f''4. bes''8 | % 16
    \acciaccatura a''8 \tuplet 3/2 { g''8([ f'' es'']) } d''4 c''4\trill | % 17
    bes'2 r4 | % 18
    R2. | % 19
    R2. | % 20
    R2. | % 21
    R2. | % 22
    aes''4\p aes''4 aes''8([ bes'']) | % 23
    aes''8([ g'']) g''4 \tuplet 3/2 { c'''8([\f bes'' aes'']) } | % 24
    bes''4 es'''4 \tuplet 3/2 { f''8([ g'' aes'']) } | % 25
    aes''8([ g'') f''( es'') d''( c'')] | % 26
    bes'4 g'4 f'4\trill | % 27
    es'2 r4 | % 28
  }
}

menuettoViolinTwo = \absolute {
  \menuettoGlobal
  \repeat volta 2 {
    r4 g'4\p es'4 | % 1
    f'2 aes'4 | % 2
    bes'2 d'4 | % 3
    es'2 g'4 | % 4
    aes'4 g'4 f'4 | % 5
    bes'4 aes'4 g'4 | % 6
    f'2\f g'4 | % 7
    f'2 g'4 | % 8
    es'4 c''8.[ bes'16 aes'8. g'16] | % 9
    \appoggiatura g'4 f'2 r4 | % 10
  }
  \repeat volta 2 {
    f'4( bes'4) d''4-. | % 11
    d''4( es''8.)[ d''16 c''8. bes'16] | % 12
    a'4 a'4 a'4 | % 13
    a'4( bes'8.)[ a'16 g'8. f'16] | % 14
    es'4 es'4 \tuplet 3/2 { g'8([ f' es']) } | % 15
    es'8([ d']) d'4. bes8 | % 16
    \acciaccatura f'8 \tuplet 3/2 { es'8([ d' c']) } bes4 a4\trill | % 17
    bes2 r4 | % 18
    bes4\p bes4 bes4 | % 19
    c'4 c'4 c'4 | % 20
    f'4 f'4 f'8([ aes']) | % 21
    aes'8([ g']) g'2 | % 22
    f''4 f''4 f''8([ g'']) | % 23
    f''8([ es'']) es''4 es'4\f | % 24
    es'2 bes'4 | % 25
    bes'2 r4 | % 26
    g'4 es'4 d'4 | % 27
    es'2 r4 | % 28
  }
}

menuettoViola = \absolute {
  \clef alto \menuettoGlobal
  \repeat volta 2 {
    R2. | % 1
    R2. | % 2
    R2. | % 3
    R2. | % 4
    R2. | % 5
    R2. | % 6
    bes'2.\f | % 7
    bes'2. | % 8
    g'4 aes'4 aes'4 | % 9
    bes'4 f'4 bes4 | % 10
  }
  \repeat volta 2 {
    r4 d''4 bes'4 | % 11
    c''4 c'4 r4 | % 12
    f'4 f'4 f'4 | % 13
    bes'4 bes4 r4 | % 14
    bes'4 bes'4 bes'4 | % 15
    bes2 d'4 | % 16: worn final notehead read as a quarter; see notes.
    es'4 f'4 f4 | % 17
    bes4 g'4\> f'4\! | % 18
    es'4\p es'4 es'8([ g']) | % 19
    g'8([ f']) f'2 | % 20
    d'4 d'4 d'4 | % 21
    es'4 es'4 es'4 | % 22
    d'4 d'4 bes4 | % 23
    es'2 aes'4\f | % 24
    g'2 d'4 | % 25
    es'2 r4 | % 26
    es'4 bes'4 bes4 | % 27
    es'4 bes4 es4 | % 28
  }
}

menuettoCello = \absolute {
  \clef bass \menuettoGlobal
  \repeat volta 2 {
    R2. | % 1
    R2. | % 2
    R2. | % 3
    R2. | % 4
    R2. | % 5
    R2. | % 6
    d2\f es4 | % 7
    d2 es4 | % 8
    g4 aes4 aes4 | % 9
    bes4 f4 bes,4 | % 10
  }
  \repeat volta 2 {
    r4 d'4 bes4 | % 11
    c'4 c4 r4 | % 12
    f4 f4 f4 | % 13
    bes4 bes,4 r4 | % 14
    bes4 bes4 bes4 | % 15
    bes,2 d4 | % 16
    es4 f4 f,4 | % 17
    bes,4 bes4\> aes4\! | % 18
    g4\p g,4 g,4 | % 19
    aes,4 aes,4 aes,4 | % 20
    bes,4 bes,4 bes,4 | % 21
    c4 c4 c4 | % 22
    d4 d4 bes,4 | % 23
    es2 aes4\f | % 24
    g2 d4 | % 25
    es2 r4 | % 26
    es4 bes4 bes,4 | % 27
    es4 bes,4 es,4 | % 28
  }
}

trioBreaks = {
  s2.*4 \break
  s2.*4 \break
  s2.*5 \pageBreak
  s2.*6 \break
  s2.*6 \break
  s2.*7
}

trioViolinOne = \absolute {
  \trioGlobal
  \tupletUp
  \repeat volta 2 {
    <d' bes'>2\f bes''4\p | % 1
    \acciaccatura a''8 g''4( f''4 es''4) | % 2
    \appoggiatura es''4 d''4. es''8 es''8.([\trill d''32 es''32]) | % 3
    f''4 a''16([ bes''8.) a''16( bes''8.)] | % 4
    <d' bes'>2\f bes''4\p | % 5
    \acciaccatura a''8 g''4( f''4 es''4) | % 6
    \appoggiatura es''4 d''4. es''8 es''8.([\trill d''32 es''32]) | % 7
    f''4 r4 bes''4 | % 8
    fis''8([ g'']) g''4.( a''8) | % 9
    bes''8([ f'')\< d'''( a'') bes''(\f f'')] | % 10
    \acciaccatura f''8 es''4 d''4 c''4\trill | % 11
    \alternative {
      { bes'2 r4 | } % 12
      { bes'2 r4 | } % 13
    }
  }
  \repeat volta 2 {
    <a f'>2\f f''4\p | % 14
    \acciaccatura e''8 d''4( c''4 bes'4) | % 15
    \appoggiatura bes'4 a'4. bes'8 bes'8.([\trill a'32 bes'32]) | % 16
    c''4 e''16([ f''8.) e''16( f''8.)] | % 17
    f'2\f \tuplet 3/2 { c''8([\p d'' es'']) } | % 18
    d'2\f \tuplet 3/2 { d''8([\p es'' f'']) } | % 19
    f''4 \tuplet 3/2 { bes''8([ a'' g'']) } \tuplet 3/2 { f''8([ es'' d'']) } | % 20
    c''4 r4 r4 | % 21
    <d' bes'>2\f bes''4\p | % 22
    \acciaccatura a''8 g''4( f''4 es''4) | % 23
    \appoggiatura es''4 d''4. es''8 es''8.([\trill d''32 es''32]) | % 24
    f''4 a''16([ bes''8.) a''16( bes''8.)] | % 25
    <d' bes'>4\fp aes''2 | % 26
    aes''!8([ g'']) g''2 | % 27
    fis''8([ g'']) g''4.( a''8) | % 28
    bes''8([ f'')\< d'''( a'') bes''(\f f'')] | % 29
    \acciaccatura f''8 es''4 d''4 c''4\trill | % 30
    \alternative {
      { bes'2 r4 | } % 31
      { bes'2 r4 | } % 32
    }
  }
  \bar "|."
}

trioViolinTwo = \absolute {
  \trioGlobal
  \repeat volta 2 {
    bes'8[\f bes' bes' bes' bes'\p bes'] | % 1
    bes'2.:8 | % 2
    bes'2.:8 | % 3
    bes'2.:8 | % 4
    bes'8[\f bes' bes' bes' bes'\p bes'] | % 5
    bes'2.:8 | % 6
    bes'2.:8 | % 7
    bes'2.:8 | % 8
    bes'2.:8 | % 9
    bes'8[\< bes' bes' bes' bes'\f bes'] | % 10
    bes'8[ bes' bes' bes'] a'8[ a'] | % 11
    \alternative {
      { bes'2 r4 | } % 12
      { bes'2 r4 | } % 13
    }
  }
  \repeat volta 2 {
    <a f'>2\f a'4\p | % 14
    \acciaccatura c''8 bes'4( a'4 g'4) | % 15
    \appoggiatura g'4 f'4. g'8 g'8.([\trill f'32 g'32]) | % 16
    a'4 r4 r4 | % 17
    a2\f \tuplet 3/2 { a'8([\p bes' c'']) } | % 18
    bes2\f \tuplet 3/2 { bes'8([\p c'' d'']) } | % 19
    d''4 r4 \tuplet 3/2 { d''8([ c'' bes']) } | % 20
    g'4 r4 r4 | % 21
    bes'8[\f bes' bes' bes' bes'\p bes'] | % 22
    bes'2.:8 | % 23
    bes'2.:8 | % 24
    bes'2.:8 | % 25
    bes'2.:8\fp | % 26
    bes'2.:8 | % 27
    bes'2.:8 | % 28
    bes'8[\< bes' bes' bes' bes'\f bes'] | % 29
    bes'2:8 a'8[ a'] | % 30
    \alternative {
      { bes'2 r4 | } % 31
      { bes'2 r4 | } % 32
    }
  }
}

trioViola = \absolute {
  \clef alto \trioGlobal
  \repeat volta 2 {
    bes2\f d''4\p | % 1
    es''4( d''4 c''4) | % 2
    bes'4 bes4( c'4) | % 3
    d'4 r4 r4 | % 4
    bes2\f d''4\p | % 5
    es''4( d''4 c''4) | % 6
    bes'4 bes4( c'4) | % 7
    d'4 r4 d'4 | % 8
    es'4 r4 es''4 | % 9
    d''4 r4 d'4\f | % 10
    es'4 f'4 f4 | % 11
    \alternative {
      { bes4 d'4 f'4 | } % 12
      { bes4 d'4 bes4 | } % 13
    }
  }
  \repeat volta 2 {
    f'8[\f f' f' f' f'\p f'] | % 14
    f'2.:8 | % 15
    f'2.:8 | % 16
    f'2.:8 | % 17
    f'8[\f f' f' f' f'\p f'] | % 18
    f'8[\f f' f' f' f'\p f'] | % 19
    f'2.:8 | % 20
    f'8[\< f' f' es' d' c']\! | % 21
    bes4\f r4 d''4\p | % 22
    es''4( d''4 c''4) | % 23
    bes'4 bes4( c'4) | % 24
    d'4 r4 r4 | % 25
    bes4(\fp c'4 d'4) | % 26
    es'4 r4 r4 | % 27
    es''4 es''4 es''4 | % 28
    d''4 r4 d'4\f | % 29
    es'4 f'4 f4 | % 30
    \alternative {
      { bes4 d'4 bes4 | } % 31
      { bes2 r4 | } % 32
    }
  }
}

trioCello = \absolute {
  \clef bass \trioGlobal
  \repeat volta 2 {
    bes,2\f d'4\p | % 1
    es'4( d'4 c'4) | % 2
    bes4 bes,4( c4) | % 3
    d4 r4 r4 | % 4
    bes,2\f d'4\p | % 5
    es'4( d'4 c'4) | % 6
    bes4 bes,4( c4) | % 7
    d4 r4 d4 | % 8
    es4 r4 es'4 | % 9
    d'4 r4 d4\f | % 10
    es4 f4 f,4 | % 11
    \alternative {
      { bes,4 d4 f4 | } % 12
      { bes,4 d4 bes,4 | } % 13
    }
  }
  \repeat volta 2 {
    f,2\f r4 | % 14
    R2. | % 15
    R2. | % 16
    R2. | % 17
    f,2\f r4 | % 18
    f,2\f r4 | % 19
    R2. | % 20
    r4 f8[\p\< es d c]\! | % 21
    bes,2\f d'4\p | % 22
    es'4( d'4 c'4) | % 23
    bes4 bes,4( c4) | % 24
    d4 r4 r4 | % 25
    bes,4(\fp c4 d4) | % 26
    es4 r4 r4 | % 27
    es'4 es'4 es'4 | % 28
    d'4 r4 d4\f | % 29
    es4 f4 f,4 | % 30
    \alternative {
      { bes,4 d4 bes,4 | } % 31
      { bes,2 r4 | } % 32
    }
  }
}

\book {
  \bookpart {
    \header { piece = \markup \bold "Menuetto" }
    \score {
      \new StaffGroup <<
        \new Staff \with { instrumentName = "Violin I" shortInstrumentName = "Vln. I" } << \menuettoViolinOne \menuettoBreaks >>
        \new Staff \with { instrumentName = "Violin II" shortInstrumentName = "Vln. II" } \menuettoViolinTwo
        \new Staff \with { instrumentName = "Viola" shortInstrumentName = "Vla." } \menuettoViola
        \new Staff \with { instrumentName = "Cello" shortInstrumentName = "Vc." } \menuettoCello
      >>
    }
  }
  \bookpart {
    \header { title = ##f subtitle = ##f piece = \markup \bold "Trio" }
    \score {
      \new StaffGroup <<
        \new Staff \with { instrumentName = "Violin I" shortInstrumentName = "Vln. I" } << \trioViolinOne \trioBreaks { s2.*32 \once \override Score.RehearsalMark.self-alignment-X = #RIGHT \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible \mark \markup \small \italic "Menuetto da capo" } >>
        \new Staff \with { instrumentName = "Violin II" shortInstrumentName = "Vln. II" } \trioViolinTwo
        \new Staff \with { instrumentName = "Viola" shortInstrumentName = "Vla." } \trioViola
        \new Staff \with { instrumentName = "Cello" shortInstrumentName = "Vc." } \trioCello
      >>
    }
  }
}
