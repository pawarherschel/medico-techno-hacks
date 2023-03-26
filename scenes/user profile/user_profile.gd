extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Username.text = Singleton.username if Singleton.username else "username"
	$VBoxContainer/Hobby.text = Singleton.hobby if Singleton.hobby else "hobby"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
