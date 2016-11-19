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

console.log(stable.Curly);
// colors.push("purple");
// horseName.push("Johanna");

// console.log(colors);
// console.log(horseName);