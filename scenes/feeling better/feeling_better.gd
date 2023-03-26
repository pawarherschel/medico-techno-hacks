extends Control

var quotes = [
	"“Stress is an ignorant state. It believes that everything is an emergency.” \n- Natalie Goldberg",
	"“Sometimes the most productive thing you can do is relax.” \n- Mark Black",
	"“Tension is who you think you should be. Relaxation is who you are.” \n- Chinese Proverb",
	"“You can’t control the direction of the wind, but you can adjust your sails.” \n- Unknown",
	"“When you find yourself under pressure, take a moment to relax and center yourself.” \n- Unknown",
	"“Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work.” \n- Steve Jobs",
	"“The best and most beautiful things in the world cannot be seen or even touched \n- they must be felt with the heart.” \n- Helen Keller",
	"“As we express our gratitude, we must never forget that the highest appreciation is not to utter words, but to live by them.” \n- John F. Kennedy",
	"“Today I choose life.” \n- Kevyn Aucoin",
	"“Yesterday is gone. Tomorrow has not yet come. We have only today. Let us begin.” \n- Mother Teresa",
	"“We all live with the objective of being happy; our lives are all different and yet the same.” \n- Anne Frank",
	"“Better to do something imperfectly than to do nothing flawlessly.” \n- Robert Schuller",
	"“We turn not older with years but newer every day.” \n- Emily Dickinson",
	"“Some of the secret joys of living are not found by rushing from point A to point B, but by inventing some imaginary letters along the way.” \n- Douglas Pagels",
	"“Never regret. If it’s good, it’s wonderful. If it’s bad, it’s experience.” \n- Victoria Holt",
	"“Almost everything will work again if you unplug it for a few minutes…Including you.” \n- Anne Lamott",
	"“Of all the things that matter, that really and truly matter, working more efficiently and getting more done, is not one of them.” \n- Mike Dooley",
	"“The key is not to prioritize what’s on your schedule, but to schedule your priorities.” \n- Stephen Covey",
	"“You can do anything—but not everything.” \n- David Allen",
	"“Stress is caused by being “here” but wanting to be “there.” \n- Eckhart Tolle"
]

# Called when the node enters the scene tree for the first time.
func _ready():
	var rand_index:int = randi() % quotes.size()
	$VBoxContainer/Label2.text = quotes[rand_index]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
