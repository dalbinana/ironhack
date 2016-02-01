var Car = function(model, noise){
	this.model=model;
	this.noise=noise;
	this.makeNoise=function () {
		console.log(this.noise);
	}

}
Car.prototype.numberOfWheels = 4;

var ibiza = new Car('Ibiza', 'brrrrrr');
ibiza.makeNoise();
console.log(ibiza.numberOfWheels);


