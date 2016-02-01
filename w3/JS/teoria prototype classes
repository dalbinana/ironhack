var animal = {
  name: 'markov',
  noise: 'grrrr',
  makeNoise: function() {
    console.log(this.name + ' is ' + this.noise + 'ing!');
  }
};
​
var Animal = function(name, noise) {
  this.name = name;
  this.noise = noise || 'wooff';
  // this.makeNoise = function() {
  //   console.log(this.name + ' is ' + this.noise + 'ing');
  // }
}
Animal.prototype.makeNoise = function () {
  console.log(this);
  console.log(this.name + ' is ' + this.noise + 'ing');
}
Animal.prototype.saySomething = function () {
  console.log('brrrrrrr');
}
var cat = new Animal('markov', 'prrrr');
var dog = new Animal('lassie');
// console.log(dog);
// console.log(cat);
cat.makeNoise();
dog.makeNoise();
cat.saySomething();