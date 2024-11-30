class_name MainMenu
extends Control
@onready var Start = $MarginContainer/HBoxContainer/VBoxContainer/Play as Button
@onready var Exit = $MarginContainer/HBoxContainer/VBoxContainer/Exit as Button
@onready var start_level = preload("res://survivors_game.tscn") as PackedScene

func _ready():
	Start.connect("pressed", Callable(self, "_on_start_pressed"))
	Exit.connect("pressed", Callable(self, "_on_exit_pressed"))
	
func _on_start_pressed():
	get_tree().change_scene_to_packed(start_level)
	
func _on_exit_pressed():
	get_tree().quit()
