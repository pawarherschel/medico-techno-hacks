extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_activity_pressed():
	var params = {
		show_progress_bar = true,
	}
	Game.change_scene("res://scenes/relaxation activity/relaxation_activity.tscn", params)
