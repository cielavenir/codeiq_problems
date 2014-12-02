// ==UserScript==
// @name        CodeIQ ideone base32
// @include     http://ideone.com/*
// ==/UserScript==

window.document.onclick =  function(event){
  var output = document.getElementById("output-text");
  if (output == null) {
    return;
  }
  var answer = output.innerHTML.replace(/[\n\r]/g, "");
  if (answer == "CodeIQ is a service in which you can check your programming skill. There are so many problems such as algorithms, mathematics, data sciences, and even security! The unique point is that (unlike other e-learnings) you can receive feedback comment from human, which will be helpful for your study. So, let's go for it!") {
    console.log("OK");
  } else {
    console.log("NG");
  }
}