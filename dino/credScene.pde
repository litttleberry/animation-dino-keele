/** //<>//
 * Scene 2: credScene
 * Vertical rolling credits printed from a .txt-file.
 * Credits stop and program is exited when music ends.
 */
void credScene(int fCount) {
  frameRate(37);
  background(22, 57, 103);
  stroke(255);
  point(random(width), random(height));

  textAlign(CENTER, CENTER);
  PFont headings = createFont("sometime.ttf", 40);
  PFont txt = createFont("bahnschrift.ttf", 20);
  fill(255);

  for (int i = 0; i < credits.length; i++) {
    // str, x (centered), y (see rows below
    // 610 =  starts "below" screen limit
    // fCount = current framecount during the loop, keeps creds rolling
    // 80*i = spacing between rows; 1 basically on top of each other)

    String line = credits[i];
    if (!line.isEmpty() && line.charAt(0) == '*') {
      line = line.substring(1);
      textFont(headings);
      text(line, width/2, height - rowH - fCount + rowH*i);
    } else {
      textFont(txt);
      text(line, width/2, height - rowH - fCount + rowH*i);
    }
  }

  if (!bgMusic.isPlaying()) exit();
}
