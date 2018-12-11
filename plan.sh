pkg_name=travis
pkg_origin=bixu
pkg_version="0.1.0"
pkg_maintainer="Blake Irvin <blakeirvin@me.com>"
pkg_license=("Apache 2")
pkg_description="Tools for interacting with the Travis testing and build service."
pkg_bin_dirs=(bin)
pkg_deps=(
  core/curl
  core/git
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
