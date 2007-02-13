preferences
configureDevelopmentEnvironment
	"Set things up the way most Trike developers like it."

	self
		configureCommonEnvironment;
		setDevelopmentPreferences;
		topChangeSetName: 'Trike';
		buildNotebookCreator;
		configureMonticello;
		setAuthorInitials
