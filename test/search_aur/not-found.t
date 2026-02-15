  $ source "$TESTDIR/../helper.sh"
  > cache=$(mktemp -d)
  > export DOWNGRADE_AUR_CACHE="$cache"
  > export DOWNGRADE_FROM_AUR=1
  > su() { eval "$3"; }

Non-existent AUR package returns error silently

  $ search_aur 'nonexistent_pkg_xyz_12345'
  [1]
