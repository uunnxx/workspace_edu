callback = function(post) {
  doSomethingWithPost(post);
}
db.query('SELECT * FROM posts where id = 1', callback);
doSomethingWithPost();


var clickCount = 0;
document.getElementById('mybutton').onclick = function() {
  clickCount++;
  alert('Clicked ' + clickCount + ' times.');
};


(function() {
  var clickCount = 0;
  $('button#mybutton').click(function() {
    clickCount++;
    alert('Clicked ' + clickCount + ' times.');
  });
})();


function() {
  console.log('hello');
}

(function() {
  console.log('hello');
})();


function myFunction () {
  console.log('hello');
}

myFunction();

// and also within inner scopes:

function myFunction() {
  console.log('hello');
}

(function() {
  myFunction();
})();
