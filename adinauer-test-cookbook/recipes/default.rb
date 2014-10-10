#
# Cookbook Name:: adinauer-test-cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
template "/home/vagrant/hello.txt" do
	source "mytemplate.erb"
	variables({
		:who => node[:who]
	})
end