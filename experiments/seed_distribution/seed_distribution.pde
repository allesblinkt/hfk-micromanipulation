void setup() {
  size(1024, 1024);
}


void draw() {
  background(255);

  pushMatrix();
  translate(width / 2, height / 2);
  int numSeeds = 50;
  float maxRadius = 100;
  ellipse(0, 0, 2, 2);
  ellipse(0, 0, maxRadius * 2, maxRadius * 2);

  float rounds = mouseX / (float)width * 10.0;

  for (int i = 0; i < numSeeds; i++) {
    float angle = map(i + 1, 0.0, numSeeds, 0, TWO_PI * rounds);
    float nRadius = (i + 1) / (float)numSeeds;
    float radius = map(pow(nRadius, 0.5), 0.0, 1.0, 0.05, 1.0) * maxRadius;
    float x = radius * cos(angle);
    float y = radius * sin(angle);

    ellipse(x, y, 10, 10);
  }
  popMatrix();
}