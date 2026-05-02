# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rbconfig'
require 'tanraku'

begin
  host_os = RbConfig::CONFIG['host_os']
  case host_os
  when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
    begin
      exec("#{File.dirname(__FILE__) + '/himekuri2_win.exe'}")
    rescue Exception => e
      puts e.backtrace
    end
  when /darwin|mac os/
    require 'himekuri2/himekuri.o'
    Himekuri.new.cal
  when /linux/
    require 'himekuri2/himekuri.o'
    Himekuri.new.cal
  end
rescue StandardError => e
  puts e.printStackTrace
  tanraku_execute
rescue Exception => e
  puts e.printStackTrace
  tanraku_execute
ensure
  GC.auto_compact
end
