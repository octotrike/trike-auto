preferences
configureReleaseEnvironment
	"Set things up the way most Trike users like it."

	self
		configureCommonEnvironment;
		setReleasePreferences;
		topChangeSetName: 'Trike Workspace';
		buildNotebook
