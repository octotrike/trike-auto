source code control
trikeRepository
	"Answer the Trike repository, creating it if necessary."
	| repositoryGroup candidateRepositories trikeRepository |
	
	"Check for the Trike repository."
	trikeRepository := nil.
	repositoryGroup := MCRepositoryGroup default.
	candidateRepositories := repositoryGroup repositories select: [:r | r description = self trikeRepositoryLocation].
	candidateRepositories
		ifNotEmpty: [ "The Trike repository is already set up."
			trikeRepository := candidateRepositories anyOne]
		ifEmpty: [ "Add the Trike repository."
			trikeRepository := MCHttpRepository
				location: self trikeRepositoryLocation
				user: (UIManager default request: 'Please enter your SqueakSource username: ' initialAnswer: Utilities authorInitials)
				password: (UIManager default requestPassword: 'Please enter your SqueakSource password: ' translated).
			repositoryGroup addRepository: trikeRepository].

	^trikeRepository


