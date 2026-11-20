#!/usr/bin/env ruby
# frozen_string_literal: true
# -*- coding: utf-8 -*-

Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

class Persona < RuntimeError
  def gun
    begin
      raise Isora
    rescue StandardError => e
      puts "#{e.class} : #{e.message}".to_s
      puts "#{e.backtrace.join('                              ')}".to_s
    ensure
      GC.start
    end
  end
end

MyError = Class.new(StandardError)
Isora = Class.new(Persona)

class Nekonyan < RuntimeError
  def bocchi
    begin
      raise YouError
    rescue StandardError => e
      puts "#{e.class} : #{e.message}".to_s
      puts "#{e.backtrace.join('                              ')}".to_s
    ensure
      GC.start
    end
  end
end

YouError = Class.new(ScriptError)
Zarigani = Class.new(YouError)

class Ranko < RuntimeError
  def sassin
    begin
      raise WhoError
    rescue StandardError => e
      puts "#{e.class} : #{e.message}".to_s
      puts "#{e.backtrace.join('                              ')}".to_s
    ensure
      GC.start
    end
  end
end

WhoError = Class.new(SignalException)
Atorantis = Class.new(WhoError)

class CatError < RuntimeError
  def kill
    begin
      raise CatError
    rescue StandardError => e
      puts "#{e.class} : #{e.message}".to_s
      puts "#{e.backtrace.join('                              ')}".to_s
    ensure
      GC.start
    end
  end
end

# persona.rb:64 warning: already initialized constant CatError
# CatError = Class.new(NoMemoryError)
# Masui = Class.new(CatError)

class DogError < RuntimeError
  def gohan
    begin
      raise DogError
    rescue RuntimeError => e
      puts "#{e.class} : #{e.message}".to_s
      puts "#{e.backtrace.join('                              ')}".to_s
    ensure
      GC.start
    end
  end
end

# persona.rb:80 warning: already initialized constant DogError
# DogError = Class.new(SystemExit)
# Davi = Class.new(DogError)

# const_missing method.
module Tanraku
  module_function

  def tanraku_throw
    m = Mutex.new

    begin
      m.lock
      raise Object
    rescue StandardError => eq
      puts "#{eq.backtrace}".to_s
      print 'Tanraku Method Exception '.to_s
    ensure
      puts '--> next class search...'.to_s
      m.unlock
    end
  end

  def tanraku_exit
    m2 = Mutex.new

    begin
      m2.lock
      raise Object
    rescue StandardError => ef
      puts "#{ef.backtrace}".to_s
    ensure
      puts '--> Tanraku_Exit Method Exception'.to_s
      m2.unlock
      exit!
    end
  end

  def tanraku_execute
    raise Object
  rescue StandardError => e
    puts "#{e.backtrace}".to_s
    puts "#{e.class} : #{e.message}".to_s
  ensure
    puts '--> Tanraku_Execute Method Exception'
    exit!
  end

  def execute_process
    begin
      raise MyError
    rescue StandardError => s
      puts "#{s.class} : #{s.message}".to_s
    ensure
      puts "#{s.backtrace}".to_s
    end
  end

  def const_missing
    begin
      raise Object
    rescue Exception => ea
      puts "#{ea.class} : #{ea.message}".to_s
    ensure
      puts "#{ea.backtrace}".to_s
    end
  end

  def tanraku_log
    begin
      Dir.mkdir('log', 0o666) unless FileTest.exist?('log')
      File.open('log/logs.txt', 'a:utf-8') do |m2|
        exee = Exception.new('popular Exception, raise message.')
        m2.puts "#{exee.message}".to_s
      end
      raise Object
    rescue Exception => ep
      File.open('log/logs.txt', 'a:utf-8') do |m|
        m.puts "#{ep.backtrace}".to_s
        m.puts "#{ep.class} : #{ep.message}".to_s
      end
    ensure
      puts 'Writed folder paths is log/logs.txt.'.to_s
    end
  end
end

include Tanraku

GC.auto_compact

__END__
