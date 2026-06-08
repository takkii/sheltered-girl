# frozen_string_literal: true

require 'date'

begin
# nyasocom_frame version = x.x.x-xxxx.xx.xx
module Frame
  frame_version = '1.3.0'
  t = Date.today
  build_day = t.strftime('%Y.%m.%d')
  FRAME_VERSION = "#{frame_version}-#{build_day}".freeze
end
rescue StandardError => e
  puts e.backtrace
ensure
  GC.auto_compact
end

__END__
