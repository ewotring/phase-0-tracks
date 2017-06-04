// assign a string to a variable
// split that string into an array
// iterate through array in reverse
// load each element into a new array
// join that array back into a string

var string = "";
var splitString = []
var reverseSplitString = []
var reverseString = ""

function reverseTheString(string) {
    console.log(string)
    splitString = string.split('');
    console.log(splitString)
     
    for (var i = splitString.length-1; i >= 0; i -= 1) {
        console.log(splitString[i]);
        reverseSplitString.push(splitString[i]);
    };
    
    console.log(reverseSplitString);
    reverseString = reverseSplitString.join('');
    console.log(reverseString)
}

reverseTheString("string")