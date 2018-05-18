

window.setTimeout(function() {
  alert('HAMMER TIME!');
}, 5000);

const hammerTime = function(time) {
  window.setTimeout(function () {
    alert(`${time} is HAMMER TIME!`);
  } );
}

hammerTime(5)
