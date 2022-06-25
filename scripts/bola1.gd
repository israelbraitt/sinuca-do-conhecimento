extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_buraco1_body_entered(body):
	queue_free()

func _on_buraco2_body_entered(body):
	queue_free()

func _on_buraco3_body_entered(body):
	queue_free()

func _on_buraco4_body_entered(body):
	queue_free()

func _on_buraco5_body_entered(body):
	queue_free()

func _on_buraco6_body_entered(body):
	queue_free()
