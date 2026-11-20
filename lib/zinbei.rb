#!/usr/bin/env ruby
# frozen_string_literal: true

# vim: filetype=ruby

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'

# Zinbei module
module Zinbei
  module_function

  def version
    require 'zinbei/serial'
  end

  def start
    require 'zinbei/page'
  end

  def afterdays
    require 'zinbei/datetime'
  end

  def license
    require 'zinbei/license'
  end

  def command
    require 'zinbei/manual'
  end

  def soft
    require 'zinbei/flag'
  end

  def spellwords
    require 'zinbei/str'
  end

  def line
    require 'zinbei/io'
  end

  def num
    require 'zinbei/number'
  end

  def scom
    require 'zinbei/scom'
  end

  def rantan
    require 'zinbei/rantan'
  end

  def nyasocom_oss
    require 'zinbei/install'
  end
end

v = /\Aversion\z/
ve = /\A[-][v]\z/
d = /\A[-][d]\z/
da = /\Adatetime\z/
h = /\A[-][l]\z/
he = /\Alicense\z/
s = /\Astart\z/
so = /\A[-][s]\z/
co = /\A[-][h]\z/
com = /\Ahelp\z/
nya = /\Anew\z/
m = /\A[-][m]\z/
n = /\A[-][n]\z/
z = /\A[-][z]\z/
r = /\A[-][r]\z/
t = /\A[-][t]\z/

one = ARGV[0]

include Zinbei

if one.nil?
  soft
elsif one.match?(v)
  require 'zinbei/ika'
  version
elsif one.match?(ve)
  version
elsif one.match?(d)
  afterdays
elsif one.match?(da)
  require 'zinbei/ika'
  afterdays
elsif one.match?(he)
  license
elsif one.match?(h)
  license
elsif one.match?(s)
  start
elsif one.match?(so)
  start
elsif one.match?(co)
  command
elsif one.match?(com)
  command
elsif one.match?(m)
  spellwords
elsif one.match?(n)
  line
elsif one.match?(z)
  num
elsif one.match?(r)
  rantan
elsif one.match?(t)
  scom
elsif one.match?(nya)
  nyasocom_oss
else
  puts 'Please choose an option.'
end

__END__
