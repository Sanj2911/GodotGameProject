extends Node2D

func _ready():
	get_tree().get_root().set("color", Color(0.0,0.0,1.0))
	

func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _on_timer_timeout():
	spawn_mob() # Replace with function body.


func _on_player_health_depleted():
	%GameOver.visible = true # Replace with function body.
	get_tree().paused = true


func _on_river_body_entered(body):
	# Check if the entering body is the player
	if body.name == "Player":
		# Call the game over function
		%GameOver.visible = true
		get_tree().paused = true

