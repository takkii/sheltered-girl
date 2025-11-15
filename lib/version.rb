# frozen_string_literal: true

# minitest, version 4 < 5 no match.
class EngineLeft
  def self.version
    # 'x.x.x.x'.to_s < '5.x.x.x'.to_s
    '4.0.7'.to_s
  end
end

begin
  EngineLeft.version
rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
