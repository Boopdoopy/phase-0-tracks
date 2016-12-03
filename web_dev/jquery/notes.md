#plan for learning about jquery
*******************************
Things I will need
1. index.html
2. style.css
3. script.js
4. img of some sort
5. second_page.html

*******************************

+15min quickly read through the jquery.js file taking notes on interesting functionality/questions
  -uses window heavily
  -simplifies function syntax (very similar to ruby)
  -grep like cmdline
  -proxy? bind to context
  -can use to modify css easier
    -adjustCSS function
    -Hooks?
    -ShowHide
  -Psuedos? like psuedo selectors?
  -Sizzle?
  -Initialize jquery object? necessary to use functionality?
  -handlers? like event listeners?
  -Tween?
  -modifyClass <---useful
  -Ajax?
  -fn.Load?
  -modify iframes, offset parent <-----could be fun with google survey

NOTE: modified plan switching research with second read through, makes more sense
+15min research answers to questions that remain, cheat sheet searches

  -window opens a contained scope path to jquery(or w/e other doc)
  -Use $() to make jquery objects
  -Sizzle is a selection function library (only necessary if you don't need all of jquery)
  -Tween is an animation function library (adds key frames, transforms etc etc)
  -Ajax is a Http request function library
  -Should do $(document).ready(function{}); to make sure doc is ready to be modified
  -Can search for classes with $.filter('class name')
  -Can select/modify elements with $('<element>')
  -Can add a variety of event handlers EXAMPLE:
      $( 'li' ).on( 'click', function( event ) {
        console.log( 'clicked', $( this ).text() );
      });
      can unbind after!!!

+15min second read through with a focus on finding inspiration for challenges/clearing up questions

+5min pick 3-5 idea's to implement

break

Loop (3-5 times)
+2min outline idea
+13min implement
+5min notes on new questions

********************************



