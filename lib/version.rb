# frozen_string_literal: true

require 'persona'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# minitest, version 4 < 5 no match.
class EngineLeft
  def self.version
    # 'x.x.x.x'.to_s < '5.x.x.x'.to_s
    '4.1.4'.to_s.freeze
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
