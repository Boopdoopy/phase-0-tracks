console.log("I'm here I swear!");


// var done = false;

function rainbowFont(color_in) {
    var color_out = color_in
    var raccoon_text = document.getElementById("raccoon_text");
    raccoon_text.style.color = color_out;
    console.log("working "+ color_out);
    
  }

var color_index = 0 ;

 function rainbowWrap(){
  var color_array = ["red","blue","orange","magenta","green","yellow","purple"];
  rainbowFont(color_array[color_index]);
  color_index ++;
  if (color_index==7){
    color_index = 0;
  }
 }
// function colorIncrement{
//   color_index++;
// }


// var color_array = ["red","blue","orange","magenta","green","yellow","purple"];
// var color_index = 0    
var photo = document.getElementById("raccoon_suit");


photo.addEventListener("click",rainbowWrap,false);






// var raccoontext = document.getElementById("raccoon_console");

// raccoontext.addEventListener("click",endThisMadness);
