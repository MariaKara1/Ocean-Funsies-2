extends RigidBody2D

@export var min_speed = 150  # Minimum speed range.
@export var max_speed = 250  # Maximum speed range.
func _ready():
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



#fish hook start function
func startf(posf):
	position = posf
	show()
	$CollisionShape2D.disabled = false
