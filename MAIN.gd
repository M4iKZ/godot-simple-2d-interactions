extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var already = false
var card = null

# Called when the node enters the scene tree for the first time.
func _ready():
	var godot = load("res://godot.tscn")
	
	var one = godot.instance()
	one.set_name("one")
	one.set_position(Vector2(200, 200))
	#one.set_z_index(1)
	
	var two = godot.instance()
	two.set_name("two")
	two.set_position(Vector2(300, 200))
	#two.set_z_index(2)
	
	add_child(one)
	add_child(two)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(already)
	pass
