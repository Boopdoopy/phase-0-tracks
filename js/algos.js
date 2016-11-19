ALPHABETconstant = [
"a","b","c","d","e",
"f","g","h","i","j",
"k","l","m","n","o",
"p","q","r","s","t",
"u","v","w","x","y",
"z"
];




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

//Psuedocode key and value match
// input: 2 Hash's
// research how hashes work in javascript
// research what key-value pairs are called in javascript
// got ahead of myself, things make more sense after 7.2
//=============welp my guess was wrong=============
// Research how to get key from a hash/ can keys be returned as an array
// idea 1
//  1.set indexJR to 0
//  2.set index to 0
//  4.iterate through hash2 setting comparison object
//  3.iterate through hash1 comparing keys with comparison object
//  4.on a match compare associated values
//  5.on a second match return true
//  6.otherwise return false

// idea 2
//  1. Store length of hash 1
//  2. Subtract hash 2 from hash 1
//  3. if length is less than stored true, else false
//result = hash1 - hash2;
//console.log(result);
//Sadly doesn't work haha
//
// idea 3
// input: 2 hashes
//  0a. will need to take hashes as arguments and pass them
//  0b. to the loops parameters so it's repeatable
//  1.similar to idea one, iterate through hash1 
//    within iteration of hash2 
//  2.iteration 1 sets comparison variable to key of hash1
//    a. can use for(key in hash1){} per 7.2
//    b. will need to store comparison value as well for later comparison
//  3.iteration 2 compares that key to each key in hash 2
//  4.on match compares associated values
//  5.on match ends and returns true
//  6.On end of iter. 2 moves iter.1 forward one.
//  7.else returns false
// output: returns true if match is found + false otherwise
function matchMaker(keyed_obj1, keyed_obj2) {
  result = false;
  for(key in keyed_obj1) {
    key1 = key;
    value1 = keyed_obj1[key];
    for(key in keyed_obj2) {
      key2 = key;
      value2 = keyed_obj2[key];
      if(key1 == key2){
        result = value1 == value2;
      };
    };
};
return result;
}




Add driver code that does the following 10 times: 
generates an array, prints the array, 
feeds the array to your "longest word" function, 
and prints the result.

//Pseudocode
//Random string maker
//input:integer
//  1. sets integer as iteration index
//  2. creates string
//  seems like this is where the iteration would begin
//  looking at 3 loops, 
//   - 1 for quantity of strings (argument) name:length,
//   - 1 for string length(rng) name:wordRNG,
//   - 1 for random letter(rng) name:charRNG,
//     things to research
//     [generate random number]
//      aight, so Math.random() returns a float between
//      0 and 1 and #floor rounds down (math time!)
//     a.local (could use global, not going to change haha)
//        yeah lets do global for speed
         // var array of alphabet
//     b.generate 2 random numbers 
//        i.1 between 1-10 
//        10*math.random.floor would return between
//        0 and 9 because random will not return 1
//        and floor rounds down
//        Q.E.D 
//        1 + 10*math.random().floor 
//        will return between 1-10


//        ii. 1 between 1-26
//         working with the previous solution
//         1 + 26*math.random().floor
//         should return between 1-26
//        not realllly random would need to do
//        (math.random()+26*math.random()).floor
//        but random enough for gibberish strings
//
//     c.iterate wordRNG times
//        i.charRNG -> letter
//        ii.add letter to string
//  3. adds string to array
//  4. checks length of array if at length 
//    returns or continues
//output:array with integer length containing
//      varying length (1-10) strings 

function gibberishARRAY(length){
  rngArray = [];
  for(i = 0;i<length;i++){

  };
return rngArray
}

//Driver Code====================================================
var testArray = ["longest phrase","long phrase","longer phrase","phrase"];
var result = longestPhrase(testArray);
console.log(result);


var profile1 = {
  name:"Johnny",
  occupation:"starving artist",
  likes:"long walks on the beach",
  favBand:"The Velvet Underground"
};

var profile2 = {
  name:"Kevin",
  occupation:"certified accountant",
  likes:"long walks on the beach",
  hates:"The Velvet underground"
};

var isMatch = matchMaker(profile1,profile2);
console.log(isMatch);


