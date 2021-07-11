extends Resource

class_name AA_Card ## THE "AA_" PREFIX IS REQUIRED SO THAT WE CAN ACTUALLY SEE THE RESOURCE IN THE INSPECTOR WITHOUT HAVING TO SCROLL FOR ABOUT TWO YEARS.

enum Colors{RED, YELLOW, GREEN, BLUE, WILD}

export(Colors) var color: int = 0
export var value: int = 0

func _init(_color: int = Colors.RED, _value: int = 0) -> void:
	color = _color
	value = _value
