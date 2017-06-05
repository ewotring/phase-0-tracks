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

var array = ["long phrase", "longest phrase", "longer phrase"];
var array2 = ["ben", "erik", "benjamin", "balthazar"]
longestString(array);
longestString(array2);