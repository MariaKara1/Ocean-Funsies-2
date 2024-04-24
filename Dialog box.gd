extends Control

var dialog = [
	'whatttt',
	'das crazyyy',
	'i diont thjink thjis is gonna work'
]

var dialog_index = 0
var finished = false
# Called when the node enters the scene tree for the first time.
func _ready():
	load_dialog();

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()

func load_dialog():
	if dialog_index < dialog.size():
		$Message.bbcode_text = dialog[dialog_index]
		$Message.percent_visible = 0
		$Tween.interpolate_property(
			$Message, "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
			)
		$Tween.start()
	else:
		queue_free()
	dialog_index += 1
