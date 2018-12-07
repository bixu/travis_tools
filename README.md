## About This Package
This Habitat package can be used to trigger a build of the current branch in Travis CI.
This allows us to use Travis to smoke-check that build packages can actually be run,
and if so, Travis can tag those packages with a Habitat Builder channel name (ie Staging)
or perform other CI task that require the most recent version of a Builder-build package.
