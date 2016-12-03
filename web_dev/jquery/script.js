$(document).ready(
  function(){
    console.log('jquery here and ready')
    $(' p ').click(function(){
      $('p').css('color','blue');
    });

  });

// var rainbowFont = function() {
//      var colorOut = blue;
//     self.css('color',colorOut);
//     console.log("working "+ colorOut);
//   };
// $(document).ready(
// var here = $(' p#click4text ').eq(1);
// console.log(here);
// );

// .on('click',rainbowFont)
// var colorIndex = 0 ;
// var readyToRainbow = false;

// function rainbowWrap(target){
//   var colorArray = ["red","blue","orange","magenta","green","yellow","purple"];
//   rainbowFont(colorArray[colorIndex],target);
//   colorIndex ++;
//   if (colorIndex===7){
//     colorIndex = 0;
//   }
// }
// $(document).ready(
// var allDemP = jquery('p');
// var hidingP = allDemP.filter('.hiding')
// var triggerP = allDemP.filter('#click4text')


// function pReveal(appear){  
//   appear.removeClass('hiding');
//   triggerP.off('click');
//   readyToRainbow = true;
// }

// triggerP.click(pReveal(hidingP));
// if (readyToRainbow === true) {
//   $(document).keypress(rainbowWrap(allDemP))
// };);


