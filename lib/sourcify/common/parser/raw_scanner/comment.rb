module Sourcify
  module Common
    class Parser
      module RawScanner #:nodoc:all
        class Comment

          def <<(content)
            (@contents ||= []) << content
          end

          def to_s
            @contents.join
          end

          def closed?
            @contents[-1].split("\n")[-1].strip == '=end'
          end

        end
      end
    end
  end
end
