extends Node

class_name EncounterHandler

var encounter_screen

func _init(nencounter_screen):
	encounter_screen = nencounter_screen

func request_encounter(id):
	match id:
		Encounter.Encounters.Rock:
			return EncounterRock.new(self, encounter_screen)
		Encounter.Encounters.ThrowRock:
			return EncounterThrowRock.new(self, encounter_screen)
		Encounter.Encounters.KickRock:
			return EncounterKickRock.new(self, encounter_screen)
		Encounter.Encounters.Goblins:
			return EncounterGoblins.new(self, encounter_screen)
		_:
			print ("UNKNOWN ENCOUNTER (forgot to add to enums? To EncounterHandler?)")
