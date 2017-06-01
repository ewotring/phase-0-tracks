//Release 0 
var color = ["purple", "iridescent blue", "black ash", "raspberry ombre"]
var name =  ["Ed", "John", "Peter", "Alex"]
var hash = {}
color.push("white");
name.push("Steve");
console.log(color);
console.log(name);
//Release 1
function Namecolors(name, color){
 for(var i = 0; i < name.length; i++) {
    hash[name[i]] = color[i];
 }; 
 return hash;
 namecolors(name,color);
console.log(hash);
};
//Release 2 
function Car(name, numberofdoor, speed) {
    console.log("our new car:", this);
    this.sound = function() { console.log("Vroom!"); };
    this.name = name;
    this.numberofdoor = numberofdoor;
    this.speed = speed;
    console.log('your car is '  + this.name);
};
var car = new Car('lebarin', 2, 'fast'); 
car.sound()
