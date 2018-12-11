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
### `trigger_build`
```
hab pkg exec bixu/travis trigger_build
```
In your build system, you'll need to set the magic environment variable for your Travis API token:
```
export TRAVIS_ACCESS_TOKEN=<token>
```
### `find_latest_release`
```
hab pkg exec bixu/travis find_latest_release origin/package channel
origin/package/0.1.0/1234567890
```
