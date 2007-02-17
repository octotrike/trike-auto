preferences
configureMonticello
	"Set Monticello up."

	| trikeRepositoryLocation repositoryGroup candidateRepositories trikeRepository |
	
	mcm ifNotNil: [^self].
	
	"Check for the Trike repository."
	trikeRepositoryLocation := self trikeRepositoryLocation.
	trikeRepository := nil.
	repositoryGroup := MCRepositoryGroup default.
	candidateRepositories := repositoryGroup repositories select: [:r | r description = trikeRepositoryLocation].
	candidateRepositories
		ifNotEmpty: [ "The Trike repository is already set up."
			trikeRepository := candidateRepositories anyOne]
		ifEmpty: [ "Add the Trike repository."
			trikeRepository := MCHttpRepository
				location: 'http://www.squeaksource.com/Trike'
				user: Utilities authorInitials
				password: (UIManager default requestPassword: 'Please enter your SqueakSource password: ' translated).
			repositoryGroup addRepository: trikeRepository].
	
	"Get the Monticello configuration from that repository."
	mcm := trikeRepository versionFromFileNamed: self trikeMonticelloConfigurationFileName.

