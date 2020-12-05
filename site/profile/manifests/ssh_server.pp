class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDEq9oe6u1UMEIcKFWyDtvyx+dv1A5wKK+DjfOFCue1BZ1UZZTiJNowUKmDbJqzNJ2M5fZP+K6vv6Phb8e7o7x7E3OS3IZvnjN4VbmYs4EJcXvRfBGiZctIQFydMp3UNxQ1k3CBjnOowu32FejB6HmRcneVXE5nVReYp0GqgAAxAUME4O2lnypEqdESM2yczd7XflE++Rxq+cY6blyKSa8EZTT5D94URqujQNYDLToEhL3DtXiV1mubSU8zKSJykI4LPqZuK+MgeDmskTkQvXAUa7dryATNNGq06Vye87iMDpJ4C+K2s7vVs7lJ1+AThwcu+2rssDxww4HQV0hZynEZ',
	}  
}
