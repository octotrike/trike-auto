preferences
setDevelopmentPreferences
	"Set things up for Trike developers."

	Categorizer sortAllCategories.

	Preferences disable: #preserveTrash.
	Preferences enable: #browseWithPrettyPrint.
	Preferences enable: #colorWhenPrettyPrinting.
