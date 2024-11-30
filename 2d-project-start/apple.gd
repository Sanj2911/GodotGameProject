extends Area2D

signal collected

@onready var anim = $Sprite2D

func _ready():
	add_to_group("Apples")
	#$CollisionShape2D.connect("body_entered", self, "_on_body_entered")

func _on_body_entered(body):
	if body.name == "Player":
		emit_signal("collected")
		queue_free()
