require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'adinauer-test-cookbook::default' do
	it 'created /home/vagrant/hello.txt' do
		expect(package('vim')).to be_installed
	end
end
