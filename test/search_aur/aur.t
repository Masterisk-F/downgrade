  $ source "$TESTDIR/../helper.sh"
  > cache=$(mktemp -d)
  > export DOWNGRADE_AUR_CACHE="$cache"
  > export DOWNGRADE_FROM_AUR=1
  > su() { eval "$3"; }

List packages based on AUR git history

  $ search_aur 'downgrade' | head -n 2
  /tmp/*/downgrade/downgrade-5.1.3-*-any.aurpkg.tar.gz (glob)
  /tmp/*/downgrade/downgrade-5.1.4-*-any.aurpkg.tar.gz (glob)

Outputs appropriately for filter_packages

  $ search_aur 'downgrade' | filter_packages 'downgrade' '=~' '^7' | head -n 1
  /tmp/*/downgrade/downgrade-7.0.0-*-any.aurpkg.tar.gz (glob)
