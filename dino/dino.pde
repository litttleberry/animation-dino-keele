/**
 * CSC-10026 Coursework a) Sprite animation (25 %)
 *
 * A sketch animating a happy dinosaur walking while the
 * background scrolls. Please refer to credits for more
 * detailed information on the sketch. Following files are used:
 *   dino.png         a sprite sheet of 8 linear dino poses
 *   bg.png           a background image for scene 1 (dino)
 *   bop.mp3          background music
 *   cred.txt         credits
 *   sometime.ttf     font
 *   bahnschrift.ttf  font
 *
 * @author litttleberry
 * @version 1.0 3.3.2022
 */

import processing.sound.*;

PImage dino, bg, bgc;
PImage[] dinoFrames = new PImage[8];
SoundFile bgMusic;
String[] credits;

int index = 0;
int offset = 0;
int animLength = 215;
int rowH = 25;


/**
 * Setting up the scene. Display size, frame count, loading files.
 */
void setup() {
  size(800, 600);
  frameRate(12);
  dino = loadImage("dino.png");
  bg = loadImage("bg.png");
  for (int n = 0; n < 8; n++) {
    dinoFrames[n] = dino.get(n*dino.width/8, 0, dino.width/8, dino.height);
  }
  bgMusic = new SoundFile(this, "bop.mp3");
  bgMusic.play();
  credits = loadStrings("cred.txt");
}


/**
 * Calls for scenes (methods).
 */
void draw() {
  if (frameCount < animLength ) dinoScene();
  else credScene(frameCount - animLength);
}
