extends Node2D

class_name Encounter

var message_text
var button_list
var legal_encounters
var encounter_handler
var encounter_screen

enum Encounters{
	ReturnToGame
	Rock,
	KickRock,
	ThrowRock,
	StartFight,
	Goblins
}

func _init(nencounter_handler, nencounter_screen):
	encounter_handler = nencounter_handler
	encounter_screen = nencounter_screen

func get_message():
	return message_text

func get_button_list():
	return button_list

func get_legal_encounters():
	return legal_encounters

func callback(encounter_id):
	if( ! legal_encounters.has(encounter_id)):
		print("ILLEGAL ENCOUNTER! DEFAULTING TO ReturnToGame!")
		encounter_screen.return_to_game()
	else:
		if(encounter_id == Encounters.ReturnToGame):
			encounter_screen.return_to_game()
		else:
			encounter_screen.change_encounter(encounter_handler.request_encounter(encounter_id))
