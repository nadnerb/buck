require 'integration/spec_helper'
require 'buck/config'

describe Buck::Commands::Base do

  subject { described_class }

  describe 'configures buck' do
    it 'will return config' do
      expect(subject.run('', [])).to be_a Buck::Config
    end
  end

end
