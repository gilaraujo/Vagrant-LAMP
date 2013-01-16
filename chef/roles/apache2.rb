name "apache2"
description "Apache2 httpd"
env_run_lists "_default" => %w[ disable-iptables-selinux apache2 ]
default_attributes \
	:apache => {
		:listen_ports => %w[ 80 ]
	}
