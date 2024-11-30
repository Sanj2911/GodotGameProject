extends Control

# Called when the Start button is pressed
func _on_StartButton_pressed():
	# Add logic here to start the game
	# For example, load the main game scene
	get_tree().change_scene("res://MainGameScene.tscn")

# Called when the Restart button is pressed
func _on_RestartButton_pressed():
	# Add logic here to restart the game
	# For example, reload the current scene or load a specific scene
	get_tree().reload_current_scene()

# Called when the Close button is pressed
func _on_CloseButton_pressed():
	get_tree().quit() # This will close the game window
