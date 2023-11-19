extends Encounter

class_name EncounterRock

func _init(encounter_handler, encounter_screen).(encounter_handler, encounter_screen):
	message_text = "There is a rock on the ground."
	button_list = [
		"Kick the rock!",
		"Ignore the rock and move on.",
		"Throw the rock."
	]
	legal_encounters = [
		Encounters.KickRock,
		Encounters.ReturnToGame,
		Encounters.ThrowRock
	]
