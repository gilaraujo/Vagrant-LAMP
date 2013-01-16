name "lamp"
description "Lamp Stack (Linux, Apache, Mysql and PHP)"
env_run_lists "_default" => %w[ role[base] role[apache2] role[mysql] role[php] apache2::mod_php5 php::module_mysql ]
