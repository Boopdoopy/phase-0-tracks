var colors = [
"blue",
"green",
"yellow",
"red"
];

var horseName = [
"Ed",
"Larry",
"Moe",
"Curly"
];

var stable = {};

for (var i = 0;i<horseName.length;i++) {
  name = horseName[i];
  color = colors[i];
  stable[name] = color;
}

//Driver Code ==================================
console.log(stable.Curly);
// colors.push("purple");
// horseName.push("Johanna");

// console.log(colors);
// console.log(horseName);
//===============================================

function Car(year,type,color,isFast) {
  console.log("Our new car:", this);
  this.year = year;
  this.type = type;
  this.color = color;
  this.isFast = isFast;

  this.testDrive = function(){
    console.log("Vroom Vroom");
    }
  };

carNames = [
"Jeep",
"Stationwagon",
"Sports Car",
"Hummer"
];

console.log("Let's build a car!");
var jeep = new Car(2016,"Jeep","White",true);
console.log(jeep);
jeep.testDrive();


var volkswagon = new Car(1989,"Stationwagon","yellow",false);
var ferrari = new Car(2012,"Sports car","red",true);
var h3 = new Car(2010,"Hummer","black",true);

console.log("Something family friendly!");
console.log(volkswagon);
console.log("Something cool!");
console.log(ferrari);
console.log("Something lame!");
console.log(h3);


// var car1
// var car2
// var car3
// var car4

// for (i=0;i<carNames.length;i++) {
  
// }







