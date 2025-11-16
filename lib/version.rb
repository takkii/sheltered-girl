# frozen_string_literal: true

require 'tanraku'

# minitest, version 4 < 5 no match.
class EngineLeft
  def self.version
    # 'x.x.x.x'.to_s < '5.x.x.x'.to_s
    '4.0.7.1'.to_s
  end
end

begin
  EngineLeft.version
rescue StandardError => e
  puts e.backtrace
  tanraku_execute
ensure
  GC.auto_compact
end

__END__
