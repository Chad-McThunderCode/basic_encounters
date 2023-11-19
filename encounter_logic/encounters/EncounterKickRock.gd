extends Encounter

class_name EncounterKickRock

func _init(encounter_handler, encounter_screen).(encounter_handler, encounter_screen):
	message_text = "You hurt your foot."
	button_list = [
		"Kick it again!",
		"Pick it up and throw it!",
		"You win this time, rock."
	]
	
	legal_encounters = [
		Encounters.KickRock,
		Encounters.ThrowRock,
		Encounters.ReturnToGame
	]
