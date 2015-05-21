require 'yaml'
require 'hashie'
require 'forwardable'

module Buck
  class Config
    extend Forwardable
    def_delegators :contents, :terraform

    DEFAULT_CONFIG_FILE = '.buck-config.yml'

    def initialize(config_file)
      @contents = Hashie::Mash.new(YAML.load_file(config_file))
    end

    private

    attr_reader :contents

  end
end
