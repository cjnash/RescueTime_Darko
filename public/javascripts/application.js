// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

window.onload = function() { 
  var txts = document.getElementsByTagName('TEXTAREA') 

  for(var i = 0, l = txts.length; i < l; i++) {
    if(/^[0-9]+$/.test(txts[i].getAttribute("maxlength"))) { 
      var func = function() { 
        var len = parseInt(this.getAttribute("maxlength"), 10); 

        if(this.value.length > len) { 
          alert('Maximum length exceeded: ' + len); 
          this.value = this.value.substr(0, len); 
          return false; 
        } 
      }

      txts[i].onkeyup = func;
      txts[i].onblur = func;
    } 
  } 
}

