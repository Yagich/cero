extends AA_Card

class_name AA_ActionCard

enum Actions{SKIP, DRAW_TWO, REVERSE, WILD, WILD_DRAW_FOUR}

export(Actions) var action: int = 0

func _init() -> void:
	CLASS_NAME_OVERRIDE = "AA_ActionCard"
