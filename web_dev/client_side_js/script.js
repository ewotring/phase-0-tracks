console.log("I have performed in the theatre of the JavaScript.");

function changeBorder(event){
    console.log("The mouse moved over the element.");
    console.log(event);
    event.target.style.border = "thick double red";
}

var field = document.getElementById("play-with-js");
field.addEventListener("mouseenter", changeBorder);
// At first, I tried to use mouseover, but that added the thick double red border to all of the descendant elements when I moused over them. Changing to mouseenter took care of that issue. The difference, according to MDN, is that "it isn't sent when the pointer is moved from one of its descendants' physical space to its own physical space."