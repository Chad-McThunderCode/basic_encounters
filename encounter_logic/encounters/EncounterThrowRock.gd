extends Encounter

class_name EncounterThrowRock

var roll_outcome
var forced_choice

func _init(encounter_handler, encounter_screen).(encounter_handler, encounter_screen):
	button_list = ["Accept."]
	legal_encounters = [
		Encounters.ThrowRock,
		Encounters.Rock,
		Encounters.Goblins
	]
	roll_outcome = randf()
	if(roll_outcome < 0.3):
		forced_choice = Encounters.Goblins
		message_text = "You throw the rock with all your might. " \
		+ "Behind the trees you hear a *thump* followed " \
		+ "by angry goblin noises."
	elif(roll_outcome < 0.6):
		forced_choice = Encounters.Rock
		message_text = "You pick the rock up and just as you try to " \
		+ "throw it lose your balance and drop it on the floor. Nice try."
	else:
		forced_choice = Encounters.ReturnToGame
		message_text = "You aim at a tree and hit it, some bark breaks off."

func callback(button_id):
	.callback(forced_choice)
