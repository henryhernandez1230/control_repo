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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC7eOFn+WWk5YWMCmNS/CGcd8A4+c6472waRcd8OuLP/DEz3Lt/A6L2f96GeONcGOWg7LGVvFrkyxfBvwcgvA5RbMdqX+/Lsi5LSYSQsI7qsS8Zt2XEdXvrIg0gcaifqvvDI6OTeZMJJ1RbgX1bRlx3V8V7m/pFwogdTfbPsuZyfbUnLFCHxY80Hj5bUW+Mx7s0KyeGWjW1gZ2cXrGs8ycpW9OsoH2CrSHYWGNUzvrnm4NC/qadIbzCr1aSDvDEaYBle+skK6zWNOxl2j6klLJoj2ZO1Lld1cWCtA+x3SocPjN/f3MizANPzyYyW6wtdxZyvwNNsGgKMKBYeq05mZkr',
	}  
}
