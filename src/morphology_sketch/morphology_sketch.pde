import processing.sound.*;
import java.util.ArrayList;
import java.util.Arrays;

String [] clancyFiles = {
  "CLANCY-next-semester.mp3"
};
String [] vesselFiles = {
  "VESSEL-car-radio.mp3"
};
String [] blurryfaceFiles = {
  "BLURRYFACE-hometown.mp3"
};
String [] trenchFiles = {
  "TRENCH-jumpsuit.mp3"
};
String [] saiFiles = {
  "SAI-redecorate.mp3"
};
String chosenFile;
String albumName;
color mainColor;
color secondaryColor;
SoundFile file;
Amplitude amp;
FFT fft;

int bands = 64;
float[] spectrum = new float[bands];

void setup() {
  size(800, 600);
  ArrayList<String> allSongs = new ArrayList<String>();
  allSongs.addAll(Arrays.asList(clancyFiles));
  allSongs.addAll(Arrays.asList(vesselFiles));
  allSongs.addAll(Arrays.asList(blurryfaceFiles));
  allSongs.addAll(Arrays.asList(trenchFiles));
  allSongs.addAll(Arrays.asList(saiFiles));
  int sortedIndex = int(random(allSongs.size()));
  chosenFile = allSongs.get(sortedIndex);

  file = new SoundFile(this, chosenFile);
  file.play();

  if (chosenFile.startsWith("CLANCY")) {
    albumName = "CLANCY";
    mainColor = color(0xFFE12D31); // Vermelho do álbum Clancy
    secondaryColor = color(0xFFFCE300); // Amarelo do álbum Clancy
  } else if (chosenFile.startsWith("VESSEL")) {
    albumName = "VESSEL";
    mainColor = color(0xFFA1B5C9); // Azul do álbum Vessel;
    secondaryColor = color(0xFFC4342D); // Vermelho do álbum Vessel;
  } else if (chosenFile.startsWith("BLURRYFACE")) {
    albumName = "BLURRYFACE";
    mainColor = color(0xFFE12D31); // Vermelho do álbum Blurryface;
    secondaryColor = color(0xFF000000); // Preto do álbum Blurryface ;
  } else if (chosenFile.startsWith("TRENCH")) {
    albumName = "TRENCH";
    mainColor = color(0xFFFCE300); // Amarelo do álbum Trench;
    secondaryColor = color(0xFF5B633A); // Verde Oliva do álbum Trench;
  } else if (chosenFile.startsWith("SAI")) {
    albumName = "SAI";
    mainColor = color(0xFF85CDEA); // Azul do álbum Scaled and Icy
    secondaryColor = color(0xFFE4537B); // Rosa do álbum Scaled and Icy;
  } else {
    albumName = "DEFAULT";
  }

  amp = new Amplitude(this);
  amp.input(file);

  fft = new FFT(this, bands);
  fft.input(file);
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(2);
  fill(0);

  fft.analyze(spectrum);

  int barQuant = int(bands/6);

  int offset = 10;
  float spacing = 50;
  float barLimit = spacing/2 - offset;
  float barWidth = 0;
  float totalBarWidth = barQuant * spacing;
  float xOffset = (width - totalBarWidth)/2;

  float baseX = 0;
  float baseY = 550;
  float topX = 0;
  float topY = 50;


  for (int i = 0; i < barQuant; i++) {
    if (i % 2 == 0) {
      fill(mainColor);
    } else {
      fill(secondaryColor);
    }

    baseX = xOffset + i * spacing;
    topX = xOffset + i * spacing;
    barWidth = map(spectrum[i], 0, 0.3, 0, barLimit);
    barWidth = min(barWidth, barLimit);
    beginShape();
    vertex(baseX - offset, baseY);
    bezierVertex(baseX - barWidth - offset, 400, baseX - barWidth - offset, 200, topX - offset, topY);
    vertex(topX + offset, topY);
    bezierVertex(baseX + barWidth + offset, 200, baseX + barWidth + offset, 400, baseX + offset, baseY);
    endShape(CLOSE);
  }
}
