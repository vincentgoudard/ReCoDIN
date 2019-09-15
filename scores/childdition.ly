%{
Welcome to LilyPond
===================

Congratulations, LilyPond has been installed successfully.

Now to take it for the first test run.

  1. Save this file

  2. Select

       Compile > Typeset file

  from the menu.

  The file is processed, and

  3.  The PDF viewer will pop up. Click one of the noteheads.


That's it.  For more information, visit http://lilypond.org .

%}

\header{
  title = "Maths and music"
}

 \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/2)
    }
  }


\new StaffGroup <<
  \new Staff {
<<
  {
    \clef treble
    e'1
	g'1
	<e' g'>
  }
  \new FiguredBass {
    \figuremode {
      <3>2
	  <"+">2
	  <5>1
	  <5 3> 1
    }
  }
>>
  }
  \new Staff {
<<
  {
    \clef bass
    c1
	c1
	c1
  }

>>
  }
>>

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
