extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Username.text = Singleton.username if Singleton.username else "username"
	$VBoxContainer/OptionButton.add_item("dance")
	$VBoxContainer/OptionButton.add_item("art")
	$VBoxContainer/OptionButton.add_item("music")
	$VBoxContainer/OptionButton.add_item("other")
	$VBoxContainer/OptionButton.add_item("mix")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_back_pressed():
	var params = {
		show_progress_bar = true,
	}
	Game.change_scene("res://scenes/relaxation activity/relaxation_activity.tscn", params)
	
