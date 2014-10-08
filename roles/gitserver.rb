name "gitserver"
description "A git server role"
run_list "recipe[git::server]", "recipe[adinauer-test-cookbook::default]"
