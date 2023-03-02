extends Node2D

var font
var tex

# Called when the node enters the scene tree for the first time.
func _ready():
	font = load("res://fonts/OpenSans_Condensed-Regular.ttf")
	tex = load("res://icon.svg")
	
	var half = get_viewport().size.x/2
	
	var button1 = Button.new()
	button1.set_position(Vector2(half, 0))
	button1.set_size(Vector2(110, 50))
	button1.text = "Exit"
	button1.connect("pressed", self._button_pressed)
	add_child(button1)
	
	var label = Label.new()
	label.set_position(Vector2(250,350))
	label.set_size(Vector2(110, 50))
	label.set("theme_override_colors/font_color", Color(1, 0, 0))
	label.text = "Label"
	add_child(label)
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _draw():
	draw_line(Vector2(10, 10), Vector2(150, 100), Color(0.2, 0.8, 0.2))
	
	draw_rect(Rect2(120, 120, 200, 200), Color(0.4, 0.2, 0.2))
	
	draw_circle(Vector2(130, 30), 30, Color(0.2, 0.2, 0.4))
	
	draw_string(font, Vector2(320, 100), "TestTest")
	
	draw_arc(Vector2(400, 300), 230, 0.003, 0.9, 20 , Color(1.0, 0.0, 0.0))
	
	draw_texture(tex, Vector2(400, 300))
	
	draw_dashed_line(Vector2(500,100), Vector2(700, 200), Color(1, 1, 0), 2, 6)
	
	draw_polygon([Vector2(700,100), Vector2(800,100), Vector2(800,200)],
	[Color(1, 0, 0), Color(0, 0, 1), Color(0, 1, 0)])
	
	draw_multiline_string(font, Vector2(700, 400),"Godot is awesome\ndrawing is easy \n gdscript")
	
	draw_multiline([Vector2(700, 500), Vector2(750, 550), Vector2(450, 550), Vector2(650, 450)] ,Color(0.9, 0, 0.9))
	
	draw_polyline([Vector2(800, 500), Vector2(850, 550), Vector2(700, 600)] ,Color(0.3, 0.3, 0.8))
	pass

func _button_pressed():
	get_tree().quit()
	pass
	
