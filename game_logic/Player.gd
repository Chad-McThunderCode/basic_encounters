extends Node2D

var encounter_handler
var encounter_screen

func roll_for_encounter():
	var roll = randf()
	if(roll < 0.01):
		get_tree().paused = true
		encounter_screen.change_encounter(encounter_handler.request_encounter(Encounter.Encounters.Rock))
	elif(roll < 0.02):
		get_tree().paused = true
		encounter_screen.change_encounter(encounter_handler.request_encounter(Encounter.Encounters.Goblins))
		

func _ready():
	encounter_screen = get_tree().get_root().get_node("World/EncounterScreen")
	encounter_handler = encounter_screen.encounter_handler

func _process(delta):
	if(Input.is_action_pressed("ui_left")):
		translate(Vector2(-100*delta, 0))
		roll_for_encounter()
	elif(Input.is_action_pressed("ui_right")):
		translate(Vector2(100*delta, 0))
		roll_for_encounter()
