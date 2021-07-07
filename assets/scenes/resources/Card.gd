extends Resource

class_name AA_Card ## THE "AA_" PREFIX IS REQUIRED SO THAT WE CAN ACTUALLY SEE THE RESOURCE IN THE INSPECTOR WITHOUT HAVING TO SCROLL FOR ABOUT TWO YEARS.

var CLASS_NAME_OVERRIDE = "AA_Card" #while it is a var, it is used in this class as a constant. extending classes can (and should) override it in _init()

enum Colors{RED, YELLOW, GREEN, BLUE, WILD}

export(Colors) var color: int = 0
export var value: int = 0

func is_class(type: String) -> bool:
	return type == CLASS_NAME_OVERRIDE || .is_class(type)

func get_class() -> String:
	return CLASS_NAME_OVERRIDE
