int maxiterations = 256;
float reMin = -2;
float reMax = 1;
float imMin = -1;
float imMax = 1;

void setup() {
  size(500, 500);
}

void draw() {
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      //(value - start1) / (stop1 - start1) * (stop2 - start2) + start2
      float a = map(x, 0, width, reMin, reMax);
      float b = map(y, 0, height, imMin, imMax);
      Complex c = new Complex(a, b);
      int n = mandelbrot(c);
      if (n == maxiterations) {
        pixels[x+y*width] = color(0);
      } else {
        float coloring = map(n, 0, maxiterations, 0, 1);
        pixels[x+y*width] = color(255*coloring);
      }
    }
  }
  updatePixels();
}

int mandelbrot(Complex c) {
  Complex z = new Complex(0, 0);
  int n = 0;
  while (z.abs() < 2 && n < maxiterations) {
    z = z.multi(z).add(c);
    n++;
  }
  return n;
}

class Complex {
  float real;
  float imag;

  Complex(float real, float imag) {
    this.real = real;
    this.imag = imag;
  }

  float abs() {
    return sqrt(real * real + imag * imag);
  }

  Complex add(Complex b) {
    return new Complex(real + b.real, imag + b.imag);
  }

  Complex multi(Complex b) {
    float real = this.real * b.real - this.imag * b.imag;
    float imag = this.real * b.imag + this.imag * b.real;
    return new Complex(real, imag);
  }
}
