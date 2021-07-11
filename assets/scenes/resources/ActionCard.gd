extends AA_Card

class_name AA_ActionCard

enum Actions{SKIP, DRAW_TWO, REVERSE, WILD, WILD_DRAW_FOUR}

export(Actions) var action: int = 0

func _init(_color: int = Colors.RED, _value: int = 0, _action: int = Actions.SKIP) -> void:
	._init(_color, _value)
	action = _action
