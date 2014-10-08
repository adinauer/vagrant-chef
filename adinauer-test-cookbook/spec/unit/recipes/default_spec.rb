require 'spec_helper'

describe 'adinauer-test-cookbook::default' do
	let(:chef_run) do ChefSpec::Runner.new.converge(described_recipe) end

	it 'creates /vagrant/hello.txt' do
		expect(chef_run).to render_file('/vagrant/hello.txt')
	end

	it 'creates /vagrant/hello.txt using Someone as default parameter' do
		expect(chef_run).to render_file('/vagrant/hello.txt')
			.with_content('Someone was here')
	end

	it 'creates /vagrant/hello.txt with joe if attribute is specified' do
		chef_run.node.set['who'] = 'Joe'
		chef_run.converge(described_recipe)

		expect(chef_run).to render_file('/vagrant/hello.txt')
			.with_content('Joe was here')
	end
end
