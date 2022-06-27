extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var no = get_node("/root/tela_sinuca/bola_branca/Sprite")
	var position = no.global_position
	look_at(get_global_mouse_position())
