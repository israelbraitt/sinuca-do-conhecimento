extends RigidBody2D


var toque_inicial
var soltura




func _ready():
	pass 



func _process(delta):
	
	if (Input.is_action_just_pressed("Click")):
		
		toque_inicial = get_global_mouse_position()
		
	if(Input.is_action_just_released("Click")):
		
		soltura = get_global_mouse_position()
		var dir = - (soltura - toque_inicial).normalized()
		linear_velocity = dir * delta * 45000
	pass
