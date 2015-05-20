module Buck
  module Commands
    class Main < Clamp::Command

      option('--version', :flag, 'show version') do
        puts Buck::VERSION
        exit(0)
      end

      def execute
        'nothing yet'
      end

    end
  end
end
