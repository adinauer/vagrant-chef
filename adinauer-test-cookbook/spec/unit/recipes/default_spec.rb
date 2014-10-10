require 'spec_helper'

describe 'adinauer-test-cookbook::default' do
	let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
	let(:hello_file) { '/home/vagrant/hello.txt' }

	it 'creates hello.txt' do
		expect(chef_run).to render_file(hello_file)
	end

	it 'creates hello.txt using Someone as default parameter' do
		expect(chef_run).to render_file(hello_file)
			.with_content('Someone was here')
	end

	it 'creates hello.txt with joe if attribute is specified' do
		chef_run.node.set['who'] = 'Joe'
		chef_run.converge(described_recipe)

		expect(chef_run).to render_file(hello_file)
			.with_content('Joe was here')
	end
end
