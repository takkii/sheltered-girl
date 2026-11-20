#!/usr/bin/env ruby
# frozen_string_literal: true
# -*- coding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'persona'

class Compiler
  def initialize(src)
    @src = src
    @count = 0
  end

  def run
    begin
      start_time = Time.now
      @src.each_char do |c|
        case c
          when 'ruby'.to_s
            tanraku_throw
          else
            MyError; Isora; Zarigani; Atorantis
        end
      end
      end_time = (Time.now - start_time)
      print 'Performance： '
      print end_time
      puts ' sec.'
    rescue Exception => e
      puts e.backtrace
      puts "#{e.class} : #{e.message}"
      puts tanraku_exit
    ensure
      GC.auto_compact
    end
  end
end

Compiler.new(ARGF.read).run

__END__
