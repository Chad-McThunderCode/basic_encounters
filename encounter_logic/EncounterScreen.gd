extends Node2D

var button_container
var message_container
var encounter_handler
var current_encounter

func _init():
	encounter_handler = EncounterHandler.new(self)

func _ready():
	button_container = get_node("button_container")
	message_container = get_node("message_container")
	button_container.set_alignment(HALIGN_CENTER)

func _on_result(button):
	current_encounter.callback(button.get_meta("id"))

func remove_children():
	for delme in button_container.get_children():
		delme.queue_free()
	message_container.set_text("")

func change_encounter(encounter):
	remove_children()
	if(encounter == null):
		return_to_game()
	if(current_encounter):
		current_encounter.queue_free()
	current_encounter = encounter
	var i = 0
	var legal_encounters = encounter.get_legal_encounters()
	for button in current_encounter.get_button_list():
		var b = Button.new()
		b.connect("pressed", self, "_on_result", [b])
		b.set_text(button)
		b.set_meta("id", legal_encounters[i])
		i += 1
		button_container.add_child(b)
	message_container.set_text(current_encounter.get_message())

func return_to_game():
	remove_children()
	get_tree().paused = false
