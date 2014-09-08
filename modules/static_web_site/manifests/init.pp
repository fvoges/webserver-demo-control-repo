class static_web_site (
  $repodir,
  $owner,
  $group,
  $remote,
  $provider = git,
  $version  = 'master',
) {
  vcsrepo { $repodir:
    ensure   => present,
    provider => $provider,
    source   => $remote,
    revision => $version,
  }
}
