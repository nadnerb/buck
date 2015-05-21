module Buck
  module Commands
    class Build < Base

      def execute
        super
        "terraform apply this: #{config.terraform.github}"
      end

    end
  end
end
