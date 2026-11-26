# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bmi'
require 'himekuri'
require 'persona'
require 'zinbei/serial'

begin
    encoding_style
    HimekuriClass.new.himekuri_print
    HimekuriClass.new.count_print
    HimekuriClass.new.reiwa_print
    HimekuriClass.new.wahugetsu_print
    HimekuriClass.new.version
    zinbei_version
rescue Exception => e
    encoding_style
    puts "#{e.backtrace}"
ensure
    GC.auto_compact
end

