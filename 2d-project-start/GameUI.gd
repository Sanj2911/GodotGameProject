extends Control

var score = 0
var high_score = 0

@onready var scoreLabel = $Score
@onready var highScoreLabel = $HighScoreLabel  # Reference to the high score label
@onready var gameOverWindow =  $GameOver

func _ready():
	load_high_score()

	
func _process(delta):
		score += delta  # Increment score based on time
		scoreLabel.text = "Score: %d" % int(score)
		
func game_over():
	if score > high_score:
		high_score = score
		save_high_score()
	
	highScoreLabel.text = "High Score: %d" % int(high_score)
	gameOverWindow.show()

# High score methods
func load_high_score():
	var save_game = FileAccess.open("user://save_game.dat", FileAccess.READ)
	if save_game:
		high_score = save_game.get_var()
		save_game.close()
	else:
		high_score = 0

func save_high_score():
	var save_game = FileAccess.open("user://save_game.dat", FileAccess.WRITE)
	save_game.store_var(high_score)
	save_game.close()	
