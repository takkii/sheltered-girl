# frozen_string_literal: true

require "#{File.dirname(__FILE__)}/../req/mini_run"

# The new instance will be deleted after process ends.
class MiniTestFile
  attr_reader :mini_test, :mini_unit

  def initialize
    encoding_style
    host_os = RbConfig::CONFIG['host_os']
    case host_os
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      begin
        # Mini, Switch ON / (true, string).
        @mini_test = Mini(true, '/GitHub/sheltered-girl/mini_test')
        @mini_unit = Mini(true, '/GitHub/sheltered-girl/mini_unit')
      rescue
        tanraku_execute
      end
    when /linux/
      begin
        if Dir.exist?('/mnt/c/Users/sudok')
          # MiniW, Switch ON / (true, string, string).
          @mini_test = MiniW(true, '/mnt/c/Users/sudok', '/GitHub/sheltered-girl/mini_test')
          @mini_unit = MiniW(true, '/mnt/c/Users/sudok', '/GitHub/sheltered-girl/mini_unit')
        else
          # MiniW, Switch ON / (true, string, string).
          @mini_test = MiniW(true, '/home/takkii', '/GitHub/sheltered-girl/mini_test')
          @mini_unit = MiniW(true, '/home/takkii', '/GitHub/sheltered-girl/mini_unit')
        end
      rescue
        tanraku_execute
      end
    else
      begin
        raise
      rescue
        puts 'Env, UNIX and Windows only. Other OS is Exception.'
        tanraku_execute
      end
    end
  end

  def remove
    remove_instance_variable(:@mini_test)
    remove_instance_variable(:@mini_unit)
  end
end

# Run
begin
  MiniTestFile.new.remove
rescue
  puts 'Tanraku_VERSION: '.to_s + Tanraku::VERSION
  tanraku_execute
ensure
  GC.compact
end

__END__
