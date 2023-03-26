extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Singleton.hobby == "dance":
		$VBoxContainer/Label.text = Singleton.get_dance()
	elif Singleton.hobby == "music":
		$VBoxContainer/Label.text = Singleton.get_music()
	elif Singleton.hobby == "art":
		$VBoxContainer/Label.text = Singleton.get_art()
	elif Singleton.hobby == "other":
		$VBoxContainer/Label.text = Singleton.get_other()
	else:
		$VBoxContainer/Label.text = Singleton.get_mix()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	var params = {
		show_progress_bar = true,
	}
	Game.change_scene("res://scenes/form/form.tscn", params)
