extends Control

var numbers = [
	"Dr XYZ: +91 99999 12345\n(Mental health expert and counsellor)",
	"Dr ABC: +91 98321 42357\n(Ayurvedic doctor and therapist at ASDG Ashram)",
	"Dr ASD: +91 93234 65752\n(Foot massager expert at BGSAD)",
	"Dr QWE: +91 85342 23543\n(Aroma candle therapist at BAWDSA GBNOA Organic)",
	"Dr ZXC: +91 77095 31254\n(Essential oil therapist at NRTASD)",
]

# Called when the node enters the scene tree for the first time.
func _ready():
	var rand_index:int = randi() % numbers.size()
	$VBoxContainer/Label2.text = numbers[rand_index]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
