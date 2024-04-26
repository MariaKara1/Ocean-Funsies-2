extends Node2D

var line = 0
var show_dialog = false
var text_speed = 0.05
var waitTimeBetweenText = 0.25

func _ready():
	dialog(line)
	show_dialog = true

func _input(event):
	if event.is_action("ui_accept")&& $Dialogbox.visible_ratio >= 1:
		advance_text()
		
	if event.is_action("ui_cancel"):
		get_tree().quit()


#startup point

func advance_text():
	$Wait.wait_time = waitTimeBetweenText
	#clear and reset tex
	clear_text()
	line +=1
	dialog(line)
	
	

#set the text from dialog
#show the text

func _process(delta):
	show_text()

#loop
func show_text():
	if show_dialog == true:
		$Dialogbox.visible_ratio += text_speed
		


func clear_text():
	$Dialogbox.text = ""
	$Dialogbox.visible_characters = 0
	$Dialogbox.visible_ratio = 0
	$Wait.start()




func dialog(line):
	match line:
		0:$Dialogbox.text = "Hello everynyan"
		1:$Dialogbox.text = "How are you?"
		2:$Dialogbox.text = "Fine thank you"
		3:$Dialogbox.text = "Oh my god!"
		
		_:get_tree().quit()


func _on_wait_timeout():
	show_dialog = true

