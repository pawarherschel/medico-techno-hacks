extends HBoxContainer

onready var children = get_children()

# Called when the node enters the scene tree for the first time.
func _ready():
	for button in children:
		if button is CheckBox:
			button.group = "res://scenes/form/group_feeling_now.tres"
