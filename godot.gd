extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var drag = false
var on = false
var index = 0

var BN = preload("res://BN.material")

# Called when the node enters the scene tree for the first time.
func _ready():
	index = get_z_index()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	#if drag:
	if get_parent().already and get_parent().card == name:
		$Sprite.material = BN
		set_position(get_viewport().get_mouse_position())
	else:
		$Sprite.material = null
	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed() and not get_parent().card:
			#print("click")
			#drag = true
			get_parent().card = name
			get_parent().already = true
		else:
			#print("out from click")
			#drag = false
			get_parent().card = null
			get_parent().already = false
	pass # Replace with function body.


func _on_Area2D_mouse_entered():
	if not get_parent().already:
		set_z_index(1000)
		
		var pos = get_position()
	
		pos.y -= 20
		set_position(pos)
	
	pass # Replace with function body.


func _on_Area2D_mouse_exited():
	if not get_parent().already:
		set_z_index(index)
		
		var pos = get_position()
	
		pos.y += 20
		set_position(pos)
	
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	#print(area.name)
	pass # Replace with function body.
