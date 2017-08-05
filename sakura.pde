PImage img;

void setup() {
  img = loadImage("sakura.jpg");
  size(832, 623);
  colorMode(HSB, 100, 100, 100); //Hue(色相up to360), Saturation(彩度up to 100), Brightness(<100) Mode 
  image(img, 0, 0);     
  noStroke();
}

void draw() {
  background(360);
  for (int i = 0; i < img.width; i++) {  
    for (int j = 0; j < img.height; j++) {
      if (random(0, 200)<saturation(img.get(i, j))) {    //ランダム<抽出された彩度なら、
        fill(hue(img.get(i, j)), saturation(img.get(i, j)), brightness(img.get(i, j)));
      }
      rect(i, j, 1, 1);
    }
  }
}