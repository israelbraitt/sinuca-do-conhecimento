extends KinematicBody2D

var click 
var parada
var rot
var bola_pos

# Called when the node enters the scene tree for the first time.
func _ready():
	var no = get_node("/root/tela_sinuca/bola_branca/Sprite")
	bola_pos = no.global_position
	pass # Replace with function body.

func _process(delta):
	var no = get_node("/root/tela_sinuca/bola_branca/Sprite")
	
	position = no.global_position
	
	if (Input.is_action_just_pressed("Click")):
		
		if(parada == true):
			
			click = true
			
	if(no.global_position.x - bola_pos.x != 0):
		
		click = false
		visible = false
		
	if(no.global_position.x - bola_pos.x == 0):
		
		parada = true
		visible = true
		
		
	if(click != true):
		look_at(get_global_mouse_position())
	
	bola_pos = no.global_position
	
	
	
