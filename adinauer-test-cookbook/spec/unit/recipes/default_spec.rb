require 'spec_helper'

describe 'adinauer-test-cookbook::default' do
	let(:chef_run) do ChefSpec::Runner.new.converge(described_recipe) end

	it 'creates /vagrant/hello.txt' do
		expect(chef_run).to render_file('/vagrant/hello.txt')
			.with_content('ad was here')
	end
end
