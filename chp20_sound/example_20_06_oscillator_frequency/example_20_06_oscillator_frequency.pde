// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-6: Oscillator Frequency

import processing.sound.*;

SinOsc osc;

void setup() {
  size(200, 200);

  // Instantiate a Sine Wave Oscillator
  osc = new SinOsc(this);
  
  // Tell the Oscillator to start oscillating.
  // We hear the frequency of these oscillators as a pitch.
  osc.play();
}

void draw() {
  background(255);
  
  // Map mouseX to a frequency between 40 and 880 Hz
  float freq = map(mouseX, 0, width, 40, 880);
  osc.freq(freq);
  ellipse(mouseX, 100, 32, 32);
}
