PShape[] flowerShapes;         
ArrayList<Flower> flowerList;  

float flowerWidth  = 60;
float flowerHeight = 60;

float growthSpeed = 0.02;
int trail = 6;
int delayStep = 8;
float clusterRadius = 300;
float coneAngle = PI / 3;

color[] palette = {
  #EA1990,
  #EFA0A9,
  #4B599C,
  #FDFAA4,
  #5BCDDA
};

void setup() {
  size(600, 600);
  flowerShapes = new PShape[4];
  flowerShapes[0] = loadShape("elongated-flower.svg");
  flowerShapes[1] = loadShape("elongated-flower2.svg");
  flowerShapes[2] = loadShape("elongated-flower3.svg");
  flowerShapes[3] = loadShape("star-flower.svg");

  flowerList = new ArrayList<Flower>();
}

void draw() {
  background(255);
  for (Flower flower : flowerList) {
    flower.updateAndDisplay();
  }
}

void mousePressed() {
  int centralIndex = int(random(flowerShapes.length));
  PShape centralShape = flowerShapes[centralIndex];

  float centralX = mouseX;
  float centralY = mouseY;
  
  color baseColour = palette[int(random(palette.length))];
  color centralColour = color(red(baseColour), green(baseColour), blue(baseColour), 150);

  Flower central = new Flower(
    centralShape,
    centralX, centralY,
    flowerWidth, flowerHeight,
    centralColour,
    growthSpeed,
    0        
  );
  flowerList.add(central);


  for (int i = 1; i <= trail; i++) {

    int aroundIndex = int(random(flowerShapes.length));
    PShape aroundShape = flowerShapes[aroundIndex];

    float angle = -HALF_PI + random(-coneAngle / 2, coneAngle / 2);

    float distance = map(i, 1, trail, clusterRadius / trail, clusterRadius);

    float aroundX = centralX + cos(angle) * distance;
    float aroundY = centralY + sin(angle) * distance;
     color aroundBaseColour = palette[int(random(palette.length))];
     color aroundColour = color(red(aroundBaseColour), green(aroundBaseColour), blue(aroundBaseColour), 150);

    aroundX = constrain(aroundX, flowerWidth * 0.5, width  - flowerWidth * 0.5);
    aroundY = constrain(aroundY, flowerHeight * 0.5, height - flowerHeight * 0.5);

    int thisDelay = i * delayStep;

    Flower trailFlower = new Flower(
      aroundShape,
      aroundX, aroundY,
      flowerWidth, flowerHeight,
      aroundColour,
      growthSpeed,
      thisDelay
    );
    flowerList.add(trailFlower);
  }
}

class Flower {
  PShape shp;           
  float x, y;          
  float wTarget;        
  float hTarget;    
  color col;           

  float progress;       
  float growthSpeed;   
  int delayFrames;     

  Flower(PShape shp, float x, float y, float wT, float hT, color col, float gSpeed, int delay) {
    this.shp         = shp;
    this.x           = x;
    this.y           = y;
    this.wTarget     = wT;
    this.hTarget     = hT;
    this.col         = col;
    this.progress    = 0.0;       
    this.growthSpeed = gSpeed;   
    this.delayFrames = delay;    
  }


  void updateAndDisplay() {
    if (delayFrames > 0) {
      delayFrames--;
      return;           
    }

    if (progress < 1.0) {
      progress += growthSpeed;
      if (progress > 1.0) {
        progress = 1.0;
      }
    }

    float wNow = wTarget * progress;
    float hNow = hTarget * progress;

    shp.disableStyle();    
    fill(col);            
    shape(shp, x - wNow/2, y - hNow/2, wNow, hNow);
  }
}
