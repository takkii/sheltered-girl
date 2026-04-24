# frozen_string_literal: true

begin

# bmi_version = x.x.x
module BMI_CLI
  bmi_version = '1.0.3.2'
  BMI_VERSION = "#{bmi_version}".freeze
end

rescue StandardError => e
  puts e.backtrace
ensure
  GC.compact
end

__END__
