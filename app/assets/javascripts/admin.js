// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

function jsRoar(name) {
  alert('I am' + name +'. Hear me roar');
}

// var blogster = new Object();
// // setting attributies for the object
// blogster.owner = "Shumai";
// blogster.content = "Articlezila";
// blogster.color = "Bulebastic";

// hash format
var blogster = {
  owner: "Shumai",
  content: "Articlezila",
  color: "Bulebastic"
}

console.log(blogster.owner);

// as format var multiarticle = new blogster();
//object constuctor is like class creator
function Blogster(owner,content,color){
  this.owner = owner;
  this.content = content;
  this.color = color;
}

//let write clousers
function blogista(){
  var title = "Bloga";
  var content = "Bodygar";

  function blogbuster(){
    var article =title + content;
    return article;
  }
return blogbuster;
}