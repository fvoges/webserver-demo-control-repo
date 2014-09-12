puppet-demo
===========

Simple Puppet Demo to show roles, profiles, hiera, etc.

Using these manifests will setup a node with nginx and a static index.html retrieved from a github repo.

This deoends on these puppet modules:
 jfryman-nginx
 puppetlabs-ntp
 puppetlabs-vcsrepo
 
You can use `puppet module install MODULENAME` to get them installed
