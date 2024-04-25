extends Node2D

var line = 0
var show_dialog = false
var text_speed = 0.5

func _input(event):
	if event.is_action("ui_accept"):
		advance_text()
		
	if event.is_action("ui_cancel"):
		get_tree().quit()


#startup point

func advance_text():
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
	if show_dialog = true:
		$Dialogbox.visible_ratio = text_speed
		


func clear_text():
	$Dialogbox.text = ""
	$Dialogbox.visible_characters = -1
	$Dialogbox.visible_ratio = 0




func dialog(line):
	match line:
		0:$Dialogbox.text = "Hello everynyan"
		1:$Dialogbox.text = "How are you?"
		2:$Dialogbox.text = "Fine thank you"
		3:$Dialogbox.text = "Oh my god!"
		4:$Dialogbox.text = "this is totally not a reference"
		_:get_tree().quit()
