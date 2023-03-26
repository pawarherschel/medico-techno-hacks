extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	var prev_rating
	for prev in $VBoxContainer/HBoxContainer.get_children():
		if prev is CheckBox:
			if prev.pressed:
				prev_rating = int(prev.text)
	var curr_rating
	for curr in $VBoxContainer/HBoxContainer2.get_children():
		if curr is CheckBox:
			if curr.pressed:
				curr_rating = int(curr.text)
	if prev_rating and curr_rating:
		if prev_rating < curr_rating:
			var params = {
				show_progress_bar = true,
			}
			Game.change_scene("res://scenes/feeling better/feeling_better.tscn", params)
		else:
			var params = {
				show_progress_bar = true,
			}
			Game.change_scene("res://scenes/feeling worse/feeling_worse.tscn", params)
		
	pass # Replace with function body.
