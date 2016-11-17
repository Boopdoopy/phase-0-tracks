//Psuedocode longest phrase
// input: array of strings
//  1.set length benchmark (0 to start)
//  2.set index bookmark (0 to start)
//  3.iterate through array
//  4.compare the length of each item to length benchmark
//  5.if greater update benchmark to greater length and update index number
//  6.on completion of iteration return item at stored index number
// output: returns string with longest length

function longestPhrase (wordArray) {
  benchMark = 0;
  bookMark = 0;
  for (i = 0;i<wordArray.length;i++) {
    if (wordArray[i].length > benchMark) {
      bookMark = i
      benchMark = wordArray[i].length
    }
  }
return wordArray[bookMark];
}

//Driver Code====================================================
var testArray = ["longest phrase","long phrase","longer phrase","phrase"];
var result = longestPhrase(testArray);
console.log(result);