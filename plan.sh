pkg_name=travis
pkg_origin=bixu
pkg_version="0.1.0"
pkg_maintainer="Blake Irvin <blakeirvin@me.com>"
pkg_license=("Apache 2")
pkg_description="Tools for interacting with Habitat Builder and Travis."
pkg_bin_dirs=(bin)
pkg_deps=(
  core/curl
  core/gawk
  core/git
  core/grep
  core/hab
)

do_build() {
  return 0
}

do_install() {
  for bin in $(ls $PLAN_CONTEXT/bin)
  do
    build_line "Installing $bin"
    cp -pr $PLAN_CONTEXT/bin/$bin $pkg_prefix/bin/$bin
    chmod +x $pkg_prefix/bin/$bin
  done
}
