class mv_unattended_upgrades {

	# automatic upgrades (debian/ubuntu)
	package {"unattended-upgrades":
		ensure => present,
	}

}