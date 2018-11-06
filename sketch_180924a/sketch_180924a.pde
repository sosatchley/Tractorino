// Shane Atchley
// CSCI 410
// Auto-Steer Simulation

Agent agent;
HUD hud;
Field field;

void setup() {
  size(1000, 1000);
  agent = new Agent();
  hud = new HUD(this);
  field = new Field(this);
}

void draw() {
  background(0);
  agent.render();
  hud.render();
  mouseListener();
  field.render();
}

void mouseListener() {
    if (mouseY > 900) {
        hud.show();
    }
    else if (mouseY < 800) {
        hud.hide();
    }
}

void keyPressed() {
    if (keyCode == RIGHT) {
        agent.turn(1);
    } else if (keyCode == LEFT) {
        agent.turn(0);
    } else if (keyCode == UP) {
        agent.roll();
    } else if (keyCode == DOWN) {
        agent.halt();
    }
}

void keyReleased() {
    //Record wheel to machine heading ratio at end of turn, turn wheels after release to maintain ratio
}

getAgent() {
    return this.agent;
}

getHUD() {
    return this.hud;
}

getField() {
    return this.field;
}
