# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bmi'
require 'persona'

class Sample
  def self.horizen
    encoding_style
    MyError # StandardError
    puts "#{MyError}, Running VERSION: #{RUBY_DESCRIPTION}"
  end
end

begin
  Sample.horizen
rescue Exception => e
  puts e.backtrace
  tanraku_exit
ensure
  GC.auto_compact
end

__END__
