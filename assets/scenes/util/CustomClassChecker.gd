extends Reference

class_name CustomClassChecker

###############
#This class is a workaround to get the custom class of an object, by using
#a hidden ProjectSettings variable, which contains an array of all custom classes.
###############

static func get_object_class(object: Object) -> String:
	var __class_db: Array = ProjectSettings.get_setting("_global_script_classes")
	var script: Script = object.get_script()
	var script_path = script.resource_path
	for i in __class_db:
		if i.path == script_path:
			return i.class
	
	return ""

static func is_class_or_inherits_custom_class(object: Object, custom_class: String) -> bool:
	var __class_db: Array = ProjectSettings.get_setting("_global_script_classes")
	var script: Script = object.get_script()
	var script_path = script.resource_path
	for i in __class_db:
		if i.path == script_path:
			if custom_class == i.class || custom_class == i.base:
				return true
	return false
