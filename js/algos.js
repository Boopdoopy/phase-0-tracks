//Psuedocode longest phrase
// input: array of strings
//  1.set length benchmark (0 to start)
//  2.set index bookmark (0 to start)
//  3.iterate through array
//  4.compare the length of each item to length benchmark
//  5.if greater update benchmark to greater length and update index number
//  6.on completion of iteration return item at stored index number
// output: returns string with longest length
// no research needed

function longestPhrase (wordArray) {
  benchMark = 0;
  bookMark = 0;
  for (i = 0;i<wordArray.length;i++) {
    if (wordArray[i].length > benchMark) {
      bookMark = i;
      benchMark = wordArray[i].length;
    }
  }
return wordArray[bookMark];
}

//Psuedocode key and/or value match
// input: 2 Hash's
// research how hashes work in javascript
// research what key-value pairs are called in javascript
// VVVVVV====test function====VVVVVV
var hash1 = {
  key1: "value1",
  key2: "value2",
  key3: "value3",
};

var hash2 = {
  key5: "value5",
  key2: "value2",
  key4: "value4",
};
// function hashesWorkhow(hash) {
//   for (i=0;i<hash.length;i++){
//     console.log(hash[i]);
//     console.log(hash.hash[i]);
//   }

// }
//=============welp my guess was wrong=============
// Research how to get key from a hash/ can keys be returned as an array
// idea 1
//  1.set indexJR to 0
//  2.set index to 0
//  4.iterate through hash2 setting comparison object
//  3.iterate through hash1 comparing keys with comparison object
//  4.on a match compare associated values
//  5.on a second match return true
//  7.
//  6.otherwise return false

// idea 2
//  1. Store length of hash 1
//  2. Subtract hash 2 from hash 1
//  3. if length is less than stored true, else false


// output: returns true if match is found + false otherwise

// function pairMatcher (hash1,hash2) {
//   result = false
//   for (index = 0; index<hash1.length;index++) {
//     for(indexJr = 0;indexJr<hash2.length;indexJr++){
//       if (hash1 key == hash2 key){

//         if (hash1 value == hash2 value){
//           result = true
//         }
//       }
//     }
//   }
//   return result;
// }

//Driver Code====================================================
// var testArray = ["longest phrase","long phrase","longer phrase","phrase"];
// var result = longestPhrase(testArray);
// console.log(result);
result = hash1 - hash2;
console.log(result);