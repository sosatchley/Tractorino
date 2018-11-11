import controlP5.*;
class HUD {
    PApplet sketch;
    ControlP5 control;
    Field field;
    float curHeight;
    int showHeight;
    int hideHeight;
    boolean vis;
    CallbackListener cb;
    Textlabel viewLabel;
    Textlabel algLabel;
    PFont font;
    Toggle predictToggle;
    Toggle pathToggle;
    Toggle followToggle;
    boolean Prediction;
    Button fieldStarter;
    Slider testSlider;

    HUD(PApplet sketch, ControlP5 control, Field field) {
        this.sketch = sketch;
        this.control = control;
        this.showHeight = 200;
        this.curHeight = height;
        this.vis = false;
        this.font = createFont("OpenSansCondensed-Light.ttf", 32);
        // Labels
        viewLabel = new Textlabel(control, "View", 100, 10, 150,150);
        algLabel = new Textlabel(control, "Info", 800, 10, 150,150);
        viewLabel.setFont(this.font);
        algLabel.setFont(this.font);
        // View Buttons
        Prediction = false;
        predictToggle = new Toggle(control, "Prediction");
        predictToggle.setSize(50,20);
        pathToggle = new Toggle(control, "Path");
        pathToggle.setSize(50, 20);
        followToggle = new Toggle(control, "Follow");
        followToggle.setSize(50, 20);

        fieldStarter = new Button(control, "Start");
        fieldStarter.setSize(200, 100);

        testSlider = new Slider(control, "Speed");
        testSlider.setSize(200, 10);
    }



    void render() {
        pushMatrix();
        translate(0, this.curHeight);
        fill(255, 100);
        if (this.Prediction) {
            fill(255,0,0);
        }
        stroke(27, 196, 245);
        rect(0, 0, width-1, 210, 10);
        viewLabel.draw(this.sketch);
        algLabel.draw(this.sketch);
        predictToggle.setPosition(100,curHeight+50);
        pathToggle.setPosition(100, curHeight+100);
        followToggle.setPosition(100, curHeight+150);
        fieldStarter.setPosition(400, curHeight+50);
        testSlider.setPosition(400, curHeight);
        popMatrix();
    }

    void show() {
        this.vis = true;
        this.curHeight = lerp(this.curHeight, 800, 0.2);
    }

    void hide() {
        this.vis = false;
        this.curHeight = lerp(this.curHeight, height+1, 0.1);
    }


}
