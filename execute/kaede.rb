# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bmi'
require 'persona'

begin
  encoding_style
  require 'score'
rescue Exception => e
  puts e.backtrace
  tanraku_exit
ensure
  GC.auto_compact
end

__END__
