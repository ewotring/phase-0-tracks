// For each element in the array
// If the element is longer than the next element
// Save that element to a variable
// Otherwise, save the next element to the variable
// Return the variable after iterating through the array
// The length of a string can be checked with .length

function longestString(array) {
    var arrayLength = array.length;
    var longestStr = "";
    for (var i = 0; i < array.length; i++) {
        if (longestStr.length < array[i].length) {
            longestStr = array[i];
        }
    }
    return longestStr;
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

// Need a random integer between 1 and 10 for each string
// Need random letters
// Could make a string of the alphabet, and randomly select from that with the same random number generator

function randomInt(min, max) {
    var min = Math.ceil(min);
    var max = Math.floor(max);
    return Math.floor(Math.random()*(max - min)) + min;
}

function randomWord() {
    var letters = "abcdefghiklmnopqrstuvwxyz";
    //console.log("test1")
    var splitLetters = letters.split('');
    //console.log(splitLetters);
    var stringLength = randomInt(1, 10);
    //console.log(stringLength);
    var randArr = [];
    for (var i = 0; i < stringLength; i++) {
        var randIdx = randomInt(0, 25);
        //console.log(randIdx);
        randArr.push(splitLetters[randIdx]);
        //console.log(randArr);
    }
    //console.log("test1")
    var randomString = randArr.join('')
    return randomString
    //console.log(randomString);
}

function randomArray (arrLength){
    var arrayRandom = [];
    for (var i = 0; i < arrLength; i++) {
        arrayRandom.push(randomWord())
    }
    console.log(arrayRandom);
    return arrayRandom
}
  
var array = ["long phrase", "longest phrase", "longer phrase"];
var array2 = ["ben", "erik", "benjamin", "balthazar"]
longestString(array);
longestString(array2);

keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54})
keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})
keyValueMatch({animal: "Dog", legs: 4}, {animal: "Cat", legs: 3})

console.log(longestString(randomArray(6)))
