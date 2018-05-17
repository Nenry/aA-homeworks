function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// mysteryScoping1()
// it is being reassigned
function mysteryScoping2(){
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// mysteryScoping2()
// temporarily reassign inside, but will stay 'constant' to the origina val
function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x)
}

// mysteryScoping3()
// x has already been declared. cannot set a const variable to another variable
function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// mysteryScoping4()
// let is local scope, var is global scope
function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

// mysteryScoping5()

function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

madLib('make', 'best', 'guac')

function isSubstring(phrase, subphrase) {
  return phrase.includes(subphrase);
}

function fizzBuzz (array) {
  const fizzBuzzArr = [];

  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      fizzBuzzArr.push(el);
    }
  });

  return fizzBuzzArr
}

function isPrime(n) {
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false
    }
  }
  return true;
}

function sumOfNPrimes (n) {
  if (isPrime(i)) {
    sum += i;
    countPrimes++; {
  }
  i++;
}
return sum;
}
