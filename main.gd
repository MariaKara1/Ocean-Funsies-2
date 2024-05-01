extends Node2D
@export var mob_scene: PackedScene
var score

# Called when the node enters the scene tree for the first time.
func _ready():
	pass#new_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func game_over():
	$ScoreTimer.stop()
	$HUD.show_game_over()

func new_game():
	score = 0
	$HUD.show_message("Get Ready")
	$HUD.update_score(score)
	$StartTimer.start()
	$MobTimer.start()
	$Phish.start($StartPosition.position)
	$Fish_Hook.startf($StartForHook.position)
	

func _on_score_timer_timeout():
	score += 1
	$HUD.update_score(score)


func _on_start_timer_timeout():
	$ScoreTimer.start()


func _on_mob_timer_timeout():
	$MobTimer.start()
