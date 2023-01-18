/**
 * Scene 1: dinoScene
 * The actual contents of the animation.
 * A happy dinosaur appears to be trotting westwards with
 * a starlit sky and auroras illuminating its path and
 * hopeful music playing in the background.
 */
void dinoScene() {
  background(22, 57,103);          // in case bg img doesn't work
  image(bg, offset, 0);
  image(bg, 0+offset-bg.width, 0); 
  image(dinoFrames[index], width/4, height/2);
  index = (index + 1) % 8;
  offset = (offset + 5) % bg.width;
}
