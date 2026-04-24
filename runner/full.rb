# frozen_string_literal: true

require "#{File.dirname(__FILE__)}/../req/full_run"

# The new instance will be deleted after process ends.
class MiniTestFile
  attr_reader :mini_test, :mini_unit

  def initialize
    encoding_style
    host_os = RbConfig::CONFIG['host_os']
    case host_os
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      begin
        # Full, Switch ON / (true, string, string).
        @mini_test = Full(true, "#{Dir.home}".to_s, '/GitHub/sheltered-girl/mini_test')
        @mini_unit = Full(true, "#{Dir.home}".to_s, '/GitHub/sheltered-girl/mini_unit')
      rescue
        tanraku_execute
      end
    when /darwin|mac os/
      # Don't have Macintosh PC.
    when /linux/
      begin
        if Dir.exist?('/mnt/c/Users/sudok')
          # FullW, Switch ON / (true, string, string).
          @mini_test = FullW(true, '/mnt/c/Users/sudok', '/GitHub/sheltered-girl/mini_test')
          @mini_unit = FullW(true, '/mnt/c/Users/sudok', '/GitHub/sheltered-girl/mini_unit')
        else
          # FullW, Switch ON / (true, string, string) for Ubuntu Other Linux Kernel.
          @mini_test = FullW(true, '/home/takkii', '/GitHub/sheltered-girl/mini_test')
          @mini_unit = FullW(true, '/home/takkii', '/GitHub/sheltered-girl/mini_unit')
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

# Coverage, Start 'SimpleCov.start' add.
begin
  MiniTestFile.new.remove
rescue
  puts 'Tanraku_VERSION: '.to_s + Tanraku::VERSION
  tanraku_execute
ensure
  GC.auto_compact
end

__END__
