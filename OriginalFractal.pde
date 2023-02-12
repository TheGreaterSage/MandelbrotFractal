int maxiterations = 150; //max iteratoins
//setup coords for real and imaginary axes
double reMin = -2, reMax = 2;
double imMin = -1, imMax = 1;
public void setup() {
  size(500, 500);
  background(255);
}
//recursive escape-time algorithm based on maxiterations
//Source: https://en.wikipedia.org/wiki/Plotting_algorithms_for_the_Mandelbrot_set

private int mandelbrot(Complex c) {
	Complex z = new
}
//Used https://processing.org/reference/loadPixels_.html as reference guide, as well as Stackoverflow
public void draw() {
	loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y<height; y++) {
		
    }
  }
  
  pixels[x+y*width] = color(0);
  
}

class Complex {
  double real;
  double imag;

  Complex(double real, double imag) {
    this.real = real;
    this.imag = imag;
  }

  double abs() {
    return Math.sqrt(real*real + imag*imag);
  }

  Complex add(Complex b) {
    return new Complex(real + b.real, imag + b.imag);
  }

  Complex multi(Complex b) {
    double real = this.real * b.real - this.imag * b.imag;
    double imag = this.real * b.imag + this.imag * b.real;
    return new Complex(real, imag);
  }
}
