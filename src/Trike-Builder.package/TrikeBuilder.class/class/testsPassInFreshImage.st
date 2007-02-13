quality control
testsPassInFreshImage
	"Answer true if the tests pass on the current code in a freshly built release image."

	self
		buildTestImage;
		"call tests in that image (on each platform?)"
		shouldBeImplemented