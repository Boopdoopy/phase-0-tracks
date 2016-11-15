// Declare function
// Takes in a string and only a string
// Loop through string
// Removing each letter from the front of string
// Store each letter at front of string
// Return the result

function strReverse (str="") {
  var strResult = ""
  for (var i=str.length;i>=0;i--) {
    strResult += str.charAt(i);
  }

return strResult
}

//Driver code
var wordOfchoice = prompt("Enter a word to reverse!","Word!")
if (!wordOfchoice === null ) {
var backwards = strReverse(wordOfchoice);
console.log("Your backwards word is " + backwards + "!");
};