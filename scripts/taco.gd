extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	var no = get_node("/root/cena_principal/bola_branca/Sprite")
	look_at(get_global_mouse_position())
	print(position)