extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Username.text = Singleton.username if Singleton.username else "username"
	$VBoxContainer/OptionButton.add_item("mix", 1)
	$VBoxContainer/OptionButton.add_item("dance", 2)
	$VBoxContainer/OptionButton.add_item("art", 3)
	$VBoxContainer/OptionButton.add_item("music", 4)
	$VBoxContainer/OptionButton.add_item("other", 5)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_back_pressed():
	var params = {
		show_progress_bar = true,
	}
	Game.change_scene("res://scenes/relaxation activity/relaxation_activity.tscn", params)


func _on_OptionButton_item_selected(index):
	if index == 1:
		Singleton.hobby = "mix"
	if index == 2:
		Singleton.hobby = "dance"
	if index == 3:
		Singleton.hobby = "art"
	if index == 4:
		Singleton.hobby = "music"
	if index == 5:
		Singleton.hobby = "other"
	
