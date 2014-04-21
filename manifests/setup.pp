define mv_unattended_upgrades::setup(
	$admin_mail 	= 'root@localhost',
	$config_path 	= '/etc/apt/apt.conf.d/'
) 
{
	
	require('mv_unattended_upgrades')
	
	file { "${config_path}/50unattended-upgrades":
		ensure 	=> file,
    content => template("mv_unattended_upgrades/unattended-upgrades.erb"),
    mode 		=> "0644",
    owner 	=> 'root',
    group 	=> 'root',
		require => Package['unattended-upgrades'],
	}
}
