require 'unit/spec_helper'

describe Buck::Config do
  let(:config_file) { './spec/support/.buck-test-config.yml' }

  subject { described_class.new(config_file) }

  describe '#terraform' do
    it 'will return terraform git project' do
      expect(subject.terraform.github).to eql 'terraform.project'
    end
  end

end
