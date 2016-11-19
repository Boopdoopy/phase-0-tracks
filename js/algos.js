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
//==================================================
var ALPHABETconstant = [
"a","b","c","d","e",
"f","g","h","i","j",
"k","l","m","n","o",
"p","q","r","s","t",
"u","v","w","x","y",
"z"
];

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

function gibbARRAY(length){
  var rngArray = [];
  for(i = 0;i<length;i++){
    var randoStr = "";
    stringLength = Math.floor((1 + (10*Math.random())));
    for (j = 0;j<stringLength;j++){
      var rngChar = Math.floor(26*Math.random());
      randoStr += ALPHABETconstant[rngChar];
    };
    rngArray[i] = randoStr
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

var rngThree = gibbARRAY(3);
console.log(rngThree);

for(count=0;count<10;count++){
  size = 1 + Math.floor(6*Math.random());
  random = gibbARRAY(size);
  console.log("\n" + random);
  whichLongest = longestPhrase(random);
  console.log("Longest word is " + whichLongest);
};

//=========================================================

//Debugging notes for gibbArray========================
//right so ran it a couple times to see
//it's spitting out an array with length between 1 and 10
//all strings are length 0 except the last one
//with strings of length up until -> psundefinedsjfgiub (19)
//ah, in for I'm using i twice whoops
//using j instead fixed that but string length is still far higher than 10
//well rngChar should be between 0-25 (fixing that) 
//but that wouldn't do it
//well that kind of did it? I no longer get longer than 11 but still
//noticed potential order of operations issue 
//in stringLength added extra parenths
//huh, that actually fixed it. I'm guessing it was ah!
//it was running through the loop an extra time
//tl;dr notes: 
//i set to 0
//compared to length
//i again set to 0
//compared to stringLength
//letter generated
//added to string
//i++
//checked against stringLength
//repeated until string=stringLength and i 
//is wayyy bigger than length
//string is added at index = to stringLength - 1
//if by some chance i is less than 3
//repeat adding even more to later aspects of array

//Debugging notes 2: the debuggening
//driver code infinite loop scope issue with
//i being changed by functions running within
//easy fix just used count
//found edge case though, 1 in 10 times it spits out zero
//ah, its in the use of random with size
//threw in a + 1
//all good, need to remember scope especially with for(i=)


