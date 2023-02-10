int maxiterations = 150; //max iteratoins
//setup coords for real and imaginary axes
double reMin = -2, reMax = 2;
double imMin = -1, imMax = 1;
public void setup() {
  size(800, 800);
  background(255);
}
//recursive escape-time algorithm based on maxiterations
private int mandelbrot(int re, int im) {
	int z = 0;
	int n = 0;
	while(n < maxiterations) {
		double aa = a * a; 
        double bb = b * b; 
        double im = 2.0 * re * im + imMin; 
        double re = re*re - im*im + reMin; 
        if (aa + bb > 16.0) {
			break;
		}
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

