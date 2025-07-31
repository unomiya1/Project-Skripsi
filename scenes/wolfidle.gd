extends State
@onready var collision = $"../../PlayerDetection/CollisionShape2D"



var player_entered: bool = false:
	set(value):
		player_entered = value
		collision.set_deferred("disabled", value)


func _on_player_detection_body_entered(_body):
	player_entered = true 

func transition():
	if player_entered:
		get_parent().change_state("Follow")
