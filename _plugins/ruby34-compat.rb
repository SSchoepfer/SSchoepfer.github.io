# Ruby 3.4 compatibility shim for this old Jekyll 3.8 stack.
#
# pathutil 0.16.2 (a Jekyll 3.8 dependency) calls `File.read(self, *args, kwd)`
# with an empty keyword Hash passed positionally. On Ruby 3.4 that Hash is taken
# as the `length` argument and raises "no implicit conversion of Hash into
# Integer", which crashes `jekyll serve --watch` inside Platforms.proc_version.
#
# We don't run on Windows, so just make proc_version tolerant.
require "jekyll/utils/platforms"

module Jekyll
  module Utils
    module Platforms
      module_function

      def proc_version
        @proc_version ||=
          begin
            File.read("/proc/version")
          rescue StandardError
            ""
          end
      end
    end
  end
end
