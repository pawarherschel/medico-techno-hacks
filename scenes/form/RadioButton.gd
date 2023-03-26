extends CheckBox

onready var parent = self.get_parent()

func _ready():
	for others in self.get_parent().get_children():
		if others != self:
			if others is CheckBox:
				others.group = "res://scenes/form/form.tscn::1"

func _process(delta):
	pass
