source code control
preservePostscript
	"Keep the Trike-Builder postscript.  Called automatically by the postscript itself and will neither work nor be needed at any other time.  Must change Monticello & some of its dependencies in order to work."

	| package |
	self bootstrapMonticello.
	package := PackageInfo named: self builderPackageName.
	package postscript: self shouldBeImplemented
	