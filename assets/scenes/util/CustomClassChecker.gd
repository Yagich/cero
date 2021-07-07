extends Reference

class_name CustomClassChecker

static func get_object_class(object: Object) -> String:
	var __class_db: Array = ProjectSettings.get_setting("_global_script_classes")
	var script: Script = object.get_script()
	var script_path = script.resource_path
	for i in __class_db:
		if i.path == script_path:
			return i.class
	
	return ""
