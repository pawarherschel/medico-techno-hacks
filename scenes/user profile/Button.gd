extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var edit_mode = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	edit_mode = !edit_mode
	if edit_mode:
		self.text = "Edit Hobby"
	else:
		self.text = "Save Hobby"
	
