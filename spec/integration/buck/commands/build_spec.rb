require 'integration/spec_helper'

describe Buck::Commands::Build do

  subject { described_class }

  let(:args) { "-c #{Dir.pwd}/spec/support/.buck-test-config.yml".split }

  describe '#build' do
    it 'will return terraform git project' do
      expect(subject.run('build', args)).to eql 'terraform apply this: terraform.project'
    end
  end

end
