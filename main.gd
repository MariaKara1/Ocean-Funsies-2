extends Node2D
@export var mob_scene: PackedScene
var score

# Called when the node enters the scene tree for the first time.
func _ready():
	new_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func game_over():
	$ScoreTimer.stop()

func new_game():
	score = 0
	$phish.start($StartPosition.position)
	$StartTimer.start()
	$MobTimer.start()
	$Phish.start($StartPosition.position)
	$Fish_Hook.startf($StartForHook.position)

func _on_score_timer_timeout():
	score += 1

func _on_start_timer_timeout():
	$ScoreTimer.start()

func _on_mob_timer_timeout():
	$MobTimer.start()
