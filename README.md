## About This Package
This Habitat package can be used to trigger a build of the current branch in Travis CI.
This allows us to use Travis to smoke-check that build packages can actually be run,
and if so, Travis can tag those packages with a Habitat Builder channel name (ie Staging)
or perform other CI task that require the most recent version of a Builder-build package.

## Usage
Include this package in your `pkg_build_deps` array, like this:
```
pkg_build_deps=(
  bixu/travis
)
```
You can then call the included binaries in your `plan.sh`, etc.
For example:
```
hab pkg exec bixu/travis trigger_build
```
Then, in your build system, set the magic environment variable for your Travis API token.
For example:
```
export TRAVIS_ACCESS_TOKEN=<token>
```
