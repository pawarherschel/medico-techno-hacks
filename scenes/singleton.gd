extends Node

var username
var hobby

# Sources
# https://www.arthurmurraydancenow.com/blog/3-ways-dancing-relieves-stress
# https://www.verywellmind.com/how-dancing-helps-your-mental-health-5206963
# https://www.calmsage.com/how-dancing-can-help-in-managing-stress/
# https://mahtabjafari.com/dance-to-de-stress/
var dance = [
	"Dance to music that makes you feel good and express your emotions through movement.",
	"Learn a new dance style or choreography that challenges your brain and body.",
	"Join a dance class or group that allows you to socialize and have fun with others.",
	"Dance in a way that soothes your muscle and joint aches and improves your posture and flexibility.",
	"Dance in a free-flowing and conscious way that helps you get in the zone and feel more confident and compassionate.",
	"Dance to release endorphins, the happy hormones, that improve your mood and focus.",
	"Dance as a form of therapy that helps you cope with depression, anxiety, or trauma.",
	"Dance to boost your self-esteem and creativity by exploring different aspects of your personality.",
	"Dance to enjoy the present moment and forget about your worries and negative thoughts.",
	"Dance to celebrate your achievements and appreciate your body and its abilities."
]

# Sources
# https://www.heartandharmony.com/6-ways-to-reduce-stress-with-music/
# https://www.helpguide.org/articles/stress/12-ways-to-reduce-stress-with-music.htm
# https://psychcentral.com/stress/the-power-of-music-to-reduce-stress
# https://www.psychologytoday.com/us/blog/science-choice/202210/6-ways-music-can-reduce-your-stress
# https://www.ascap.com/help/wellness/7-ways-music-reduces-stress-anxiety
var music = [
	"Listen to relaxing music that has a slow tempo and no lyrics, such as classical, ambient, or instrumental music.",
	"Sing your favorite song or hum a melody that makes you feel good and helps you breathe deeply and calmly.",
	"Dance to music that energizes you and releases endorphins, the happy hormones, in your brain.",
	"Make your own song or mantra that expresses your feelings and affirms your positive intentions.",
	"Create a playlist of music that suits your mood and needs, such as uplifting, soothing, or motivating songs.",
	"Listen to music therapy sessions or programs that are designed to help you cope with stress and anxiety.",
	"Listen to music that distracts you from your worries and negative thoughts and helps you focus on the present moment.",
	"Listen to music that boosts your self-esteem and creativity by exploring different genres and artists.",
	"Listen to music that enhances your social connection and communication with others, such as joining a choir, a band, or a karaoke night.",
	"Listen to music that celebrates your achievements and appreciates your body and its abilities."
]

# Sources
# https://www.huffpost.com/entry/art-therapy-techniques_n_6103092
# https://psychcentral.com/stress/art-therapy-ways-to-draw-your-stress-out
# https://www.healthline.com/health/mental-health/anxiety-drawing
# https://www.psychreg.org/art-painting-stress/
# https://www.verywellmind.com/art-activities-for-stress-relief-3144589
var art = [
	"Design a postcard that expresses your feelings or thoughts and don’t intend to send it.",
	"Cut and paste a painting or a magazine to create a collage that reflects your mood or vision.",
	"Build an altar or a shrine to honor a loved one or something you value.",
	"Draw in total darkness and let your intuition guide you.",
	"Watercolor your bodily state and use colors to represent your sensations and emotions.",
	"Create a Zentangle-inspired drawing with repetitive patterns and shapes.",
	"Produce a permission slip that grants you the right to do something you want or need.",
	"Write a found poem by cutting out words from a newspaper or a book and rearranging them.",
	"Draw your worries or fears and then transform them into something positive or humorous.",
	"Color a mandala or a geometric design that helps you focus and relax."
]

# Sources
# https://www.verywellmind.com/how-to-use-music-for-stress-relief-3144689
# https://www.psychologytoday.com/us/blog/science-choice/202210/6-ways-music-can-reduce-your-stress
# https://greatergood.berkeley.edu/article/item/four_ways_dancing_makes_you_happier
# https://psy-minds.com/reduce-stress-music/
var other = [
	"Meditate or practice mindfulness to calm your mind and body.",
	"Exercise regularly to release endorphins and improve your physical and mental health.",
	"Write in a journal or a diary to express your feelings and thoughts.",
	"Spend time in nature or with animals to boost your mood and lower your blood pressure.",
	"Laugh more often by watching a comedy show or reading a funny book.",
	"Practice gratitude by listing things you are thankful for or writing thank-you notes.",
	"Do something nice for someone else by volunteering, donating, or helping a friend.",
	"Learn something new by taking a course, reading a book, or watching a documentary.",
	"Get enough sleep by following a regular bedtime routine and avoiding caffeine and screens before bed.",
	"Seek professional help if you feel overwhelmed or unable to cope with your stress.",
	"Breathe deeply and slowly to activate your parasympathetic nervous system and lower your heart rate and blood pressure.",
	"Use aromatherapy or essential oils to stimulate your senses and create a relaxing atmosphere.",
	"Drink herbal tea or warm milk to soothe your nerves and promote relaxation.",
	"Take a warm bath or shower to wash away your stress and tension.",
	"Massage your temples, neck, shoulders, or feet to release muscle knots and improve blood circulation.",
	"Listen to a guided meditation, hypnosis, or affirmation audio to calm your mind and body.",
	"Read a book, watch a movie, or play a game that engages your imagination and transports you to another world.",
	"Do some yoga, tai chi, or qigong to balance your energy and improve your flexibility and strength.",
	"Cuddle with a partner, a friend, a pet, or a pillow to increase oxytocin and serotonin levels and reduce cortisol levels.",
	"Make a plan or a to-do list to organize your tasks and prioritize your goals."
]

func get_dance():
	var idx:int = randi() % dance.size()
	return dance[idx]

func get_music():
	var idx:int = randi() % music.size()
	return music[idx]

func get_art():
	var idx:int = randi() % art.size()
	return art[idx]

func get_other():
	var idx:int = randi() % other.size()
	return other[idx]

func get_mix():
	var d = get_dance()
	var m = get_music()
	var a = get_art()
	var o = get_other()
	
	var arr = []
	arr.push_back(d)
	arr.push_back(m)
	arr.push_back(a)
	arr.push_back(o)
	
	var idx:int = randi() % arr.size()
	return arr[idx]
