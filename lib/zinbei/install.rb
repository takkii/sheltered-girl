# frozen_string_literal: true
#!/usr/bin/ruby

require 'fileutils'
require 'persona'

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

# Installer runner.
class InstallerRunner
  # default encoding utf-8, change encode here.
  def self.run
    one = ARGV[1]
    FileUtils.mkdir_p("./#{one}")
    FileUtils.cd("./#{one}")
    if system('git clone git@github.com:takkii/nyasocom_oss.git .', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_oss.git .')
    end
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Used zinbei, Clone is nyasocom_oss with any project name.

    EOF
  end
end

begin
  InstallerRunner.run
rescue Exception => e
  puts e.backtrace
  tanraku_execute
ensure
  GC.auto_compact
end
  
__END__

