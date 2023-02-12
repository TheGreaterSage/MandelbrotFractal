int maxiterations = 150; 
double reMin = -2, reMax = 2;
double imMin = -1, imMax = 1;
public void setup() {
  size(500, 500);
  background(255);
}


int mandelbrot(Complex c) {
	Complex z = new Complex(0, 0);
	int n = 0;
	while(z.abs() > 2 && n < maxiterations) {
	z = (z.multi(z)).add(c);
	n++;
	return n;
}
//Used https://processing.org/reference/loadPixels_.html as reference guide, as well as Stackoverflow
void draw() {
	loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y<height; y++) {
		c = new Complex(reMin + (x/width) * (reMax-reMin), imMin + (y/width) * (imMax-imMin));
		int m = mandelbrot(c);
		if(m == maxiterations) {
			pixels[x+y*width] = color(0);
		}
		else {
			double coloring = 255 - int(m*255/maxiterations);
        	pixels[x+y*width] = color(255*coloring);
		}
    }
  }
  
  updatePixels();
  
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
