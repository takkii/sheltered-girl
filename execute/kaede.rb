# frozen_string_literal: true

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'persona'

begin
  require 'score'
rescue Exception => e
  puts e.backtrace
  tanraku_exit
ensure
  GC.compact
end

__END__
