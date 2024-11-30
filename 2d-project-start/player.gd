extends CharacterBody2D

signal health_depleted
var health = 100.0
var max_health = 100.0

# Define boundaries of the background
var background_size = Vector2(10000, 10000)  # Adjust with the size of your background

@onready var gun = $Gun  # Reference to the Gun node
@onready var progress_bar = $ProgressBar  # Reference to the ProgressBar node

func _physics_process(delta):
	# Get input for movement
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600

	# Apply movement and slide
	move_and_slide()

	# Check if the character is beyond the boundaries
	var position = global_position
	position.x = clamp(position.x, 0, background_size.x)
	position.y = clamp(position.y, 0, background_size.y)
	global_position = position

	# Shooting logic
	if Input.is_action_pressed("shoot"):
		gun.shoot()

	# Play walk or idle animation based on velocity
	if velocity.length() > 0.0:
		$HappyBoo.play_walk_animation()
	else:
		$HappyBoo.play_idle_animation()

	# Damage calculation and health management
	const DAMAGE_RATE = 100.0
	var overlapping_mobs = %HurtBox.get_overlapping_bodies()
	if overlapping_mobs.size() > 0:
		health -= DAMAGE_RATE * overlapping_mobs.size() * delta
		%ProgressBar.value = health

		if health <= 0.0:
			health_depleted.emit()
			

func _on_apple_collected():
	health = max_health  # Set health to maximum
	progress_bar.value = health  # Update the progress bar
	
func _on_apple_2_collected():
		health = max_health  # Set health to maximum
		progress_bar.value = health  # Update the progress bar # Replace with function body.

func _on_apple_3_collected():
	health = max_health  # Set health to maximum
	progress_bar.value = health  # Update the progress bar
func _on_apple_4_collected():
	health = max_health  # Set health to maximum
	progress_bar.value = health  # Update the progress bar
	
func _on_apple_5_collected():
		health = max_health  # Set health to maximum
		progress_bar.value = health  # Update the progress bar # Replace with function body.

func _on_apple_6_collected():
	health = max_health  # Set health to maximum
	progress_bar.value = health  # Update the progress bar

func _on_apple_7_collected():
		health = max_health  # Set health to maximum
		progress_bar.value = health  # Update the progress bar # Replace with function body.

func _on_apple_8_collected():
	health = max_health  # Set health to maximum
	progress_bar.value = health  # Update the progress bar

