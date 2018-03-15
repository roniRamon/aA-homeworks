function madLib(verb, adjective, noun) {
  return `we shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`;
}

function isSubstring(searchString, subString){
  return searchString.split(" ").includes(subString);
}

function fizzBuzz(array){
  var newarr = [];
  for(let i = 0; i < array.length; i++){
    if(array[i] % 3 == 0 || array[i] % 5 == 0 )
    {
      newarr.push(array[i]);
    }
  }
  return newarr;
}

function isPrime(number){
  for(let i = 2; i < number; i++){
    if(number % i == 0 )
    {
      return false;
    }
  }
  return true;
}

function sumOfNPrimes(n){
  var arr = [0];
  var i = 2;
  while(arr.length < n+1){
    if(isPrime(i))
    {
        arr.push(i);
    }
    i++;
  }
  return arr.reduce((a, b) => a + b, 0);
}
