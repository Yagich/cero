extends Resource

class_name AA_Deck

var CLASS_NAME_OVERRIDE = "AA_Deck"

export(Array, Resource) var cards: Array

func add_card(card: AA_Card) -> void:
	cards.append(card)

#cards_to_add must be an array of AA_Card.
#returns either an empty array on success, or an array of declined elements from the array.
func add_card_array(cards_to_add: Array) -> Array:
	var rejects: Array = []
	for i in cards_to_add:
		if i.is_class("AA_Card"):
			cards.append(i)
		else:
			rejects.append(i)
	return rejects

func is_class(type: String) -> bool:
	return type == CLASS_NAME_OVERRIDE || .is_class(type)

func get_class() -> String:
	return CLASS_NAME_OVERRIDE
