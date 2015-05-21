module Buck
  module Commands
    class Main < Base

      subcommand 'build', 'Use terraform to build infrastructure', Build

    end
  end
end
