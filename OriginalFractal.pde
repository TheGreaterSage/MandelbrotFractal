int maxiterations = 150; //max iteratoins
//setup coords for real and imaginary axes
double reMin = -2, reMax = 2;
double imMin = -1, imMax = 1;
public void setup() {
  size(800, 800);
  background(255);
}
//recursive escape-time algorithm based on maxiterations
private int mandelbrot(Complex c) {
	int z = 0;
	int n = 0;
	while(abs(z)>=2 && n < maxiterations) {
		z = z*z + c;
		n++;
	}
	return n;
}
public void draw() {
	loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y<height; y++) {
		
    }
  }
  pixels[i+j*width] = 
}

public void myFractal(int x, int y, int siz) {
}

class Complex {
    double real;   // the real part
    double img;   // the imaginary part

    public Complex(double real, double img) {
        this.real = real;
        this.img = img;
    }

    public Complex multi(Complex b) {
        double real = this.real * b.real - this.img * b.img;
        double img = this.real * b.img + this.img * b.real;
        return new Complex(real, img);
    }
}
