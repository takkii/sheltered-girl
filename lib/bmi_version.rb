# frozen_string_literal: true

require 'date'

begin

# bmi_version = x.x.x-xxxx.xx.xx
module BMI_CLI
  bmi_version = '1.0.3.2'
  t = Date.today
  build_day = t.strftime('%Y.%m.%d')
  BMI_VERSION = "#{bmi_version}-#{build_day}".freeze
end

rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
