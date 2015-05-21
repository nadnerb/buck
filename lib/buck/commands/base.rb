module Buck
  module Commands
    class Base < Clamp::Command

      option('--version', :flag, 'show version') do
        puts "Version: #{Buck::VERSION}"
        exit(0)
      end

      option(['-c', '--config'], 'CONFIG', 'Config file',
             default: ENV.fetch('BUCK_CONFIG', Config::DEFAULT_CONFIG_FILE))

      def execute
        @config = Config.new(config)
      end

    end
  end
end
