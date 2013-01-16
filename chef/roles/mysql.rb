name "mysql"
description "MySql"
env_run_lists "_default" => %w[ mysql openssl mysql::server ]
override_attributes \
	:mysql => {
		:server_root_password => "password",
		:server_debian_password => "password",
		:server_repl_password => "password",
		:bind_address => '0.0.0.0'
	}
