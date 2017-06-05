// For each element in the array
// If the element is longer than the next element
// Save that element to a variable
// Otherwise, save the next element to the variable
// Return the variable after iterating through the array
// The length of a string can be checked with .length

function longestString(array) {
    //var array = [];
    var longestStr = "";
    for (var i = 0; i < array.length - 1; i++) {
        if (array[i].length > array[i+1].length) {
            longestStr = array[i];
        }
        else {
            longestStr = array[i+1];
        }
        
    }
    console.log(longestStr);
}

// Takes two objects as arguments
// makes an array of the keys and makes an array of the values
// if the keys are equal OR the values are equal, return true
// otherwise, return false

function keyValueMatch(object1, object2){
    // I had trouble getting this to work more elegantly. This really only works for objects with two properties. I will have to play with this more to get it to work with more properties.
    //for (var i = 0; i < Object.keys(object1).length; i++) {
        var key1 = Object.keys(object1);
        key1 = key1[0];
        //console.log(object1[key1]);
        var key2 = Object.keys(object2);
        key2 = key2[1];
        //console.log(object2[key2]);
        if (object1[key1] == object2[key1] || object1[key2] == object2[key2]) {
            console.log(true);
        }
        else {
            console.log(false);
        }
    //}
}

// 

var array = ["long phrase", "longest phrase", "longer phrase"];
var array2 = ["ben", "erik", "benjamin", "balthazar"]
longestString(array);
longestString(array2);

keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54})
keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})
keyValueMatch({animal: "Dog", legs: 4}, {animal: "Cat", legs: 3})