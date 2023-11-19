extends Encounter

class_name EncounterGoblins

func _init(encounter_handler, encounter_screen).(encounter_handler, encounter_screen):
	message_text = "You see yourself faced by a mob of angry goblins!"
	button_list = [
		"Fight! (except fights aren't implemented)!",
		"Run away (like a coward)!.",
	]
	legal_encounters = [
		Encounters.ReturnToGame,
		Encounters.ReturnToGame
	]
