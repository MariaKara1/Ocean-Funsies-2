extends RigidBody2D

@export var min_speed = 150  # Minimum speed range.
@export var max_speed = 250  # Maximum speed range.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_visibility_screen_exited():
	queue_free()

#fish hook start function
func startf(posf):
	position = posf
	show()
	$CollisionShape2D.disabled = false


func _on_hud_start_game():
	startf.emit()
#trying to get fish hook to be in start of game
