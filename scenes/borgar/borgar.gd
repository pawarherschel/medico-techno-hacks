extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var borgar_visible = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer.visible = borgar_visible


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_borgar_button_pressed():
	borgar_visible = !borgar_visible
	$HBoxContainer.visible = borgar_visible

func _on_profile_pressed():
	var params = {
		show_progress_bar = true,
	}
	Game.change_scene("res://scenes/user profile/user_profile.tscn", params)


func _on_logout_pressed():
	Singleton.username = null
	Singleton.hobby = null
	var params = {
		show_progress_bar = true,
	}
	Game.change_scene("res://scenes/login/login.tscn", params)


func _on_menu_pressed():
	var params = {
		show_progress_bar = true,
	}
	Game.change_scene("res://scenes/menu/menu.tscn", params)


func _on_back_pressed():
	borgar_visible = !borgar_visible
	$HBoxContainer.visible = borgar_visible


func _on_rest_of_the_area_pressed():
	borgar_visible = !borgar_visible
	$HBoxContainer.visible = borgar_visible


