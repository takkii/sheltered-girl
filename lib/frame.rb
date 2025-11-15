# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "#{File.dirname(__FILE__)}/../req/frame"

# Heat module
module Heart
  module_function

  def version
    print Frame::FRAME_VERSION
    puts ' : [nyasocom_framework_version] '
  end

  def installer
    require 'install'
    begin
      InstallerRunner.install
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end
  
  def creater
    require 'install'
    begin
      InstallerRunner.create
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end

  def cooker
    require 'install'
    begin
      InstallerRunner.cook
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end

  def downloader
    require 'install'
    begin
      InstallerRunner.download
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end

  def nyasocom2_downloader
    require 'install'
    begin
      InstallerRunner.nyasocom2_download
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end

  def nyasocom3_downloader
    require 'install'
    begin
      InstallerRunner.nyasocom3_download
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end

  def nyasocom_app_downloader
    require 'install'
    begin
      InstallerRunner.nyasocom_app_download
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end

  def databases
    require 'install'
    begin
      InstallerRunner.database
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end

  def appmaker
    require 'install'
    begin
      InstallerRunner.appmakers
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end

  def appmakerbr
    require 'install'
    begin
      InstallerRunner.app_maker_branches
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.compact
    end
  end



  def default
    str = 'nyasocom_frame is a framework for generating web applications. '
    puts str
  end

  def documents
    puts text = <<-EOS
# nyasocom framework information
heat

# version notation
heat -v

# nyasocom_oss project template generated
heat ichi

# nyasocom2 project template generated
heat ni

# nyasocom_sun_pg_win project template generated
heat sun

# nyasocom_sun_app project template generated
heat app

# template generation for nyasocom_oss
heat new [Folder_Name]
heat new example

# template generation for nyasocom2
heat cook [Folder_Name]
heat cook example

# template generation for nyasocom_sun_pg_win
heat create [Folder_Name]
heat create example

# nyasocom_pg project template generated
heat db postgresql
heat db --pg

# github project templete generated
heat make nyasocom takkii nyasocom_oss

# github project templete generated + branch_name
heat branch nyasocom takkii nyasocom_oss main

# HELP
heat -h
EOS
  end
end

a = /\Aapp\z/
b = /\Abranch\z/
c = /\Acreate\z/
d = /\Adb\z/
h = /\A[-][h]\z/
i = /\Aichi\z/
k = /\Acook\z/
m = /\Amake\z/
n = /\Anew\z/
s = /\Asun\z/
t = /\Ani\z/
v = /\A[-][v]\z/

one = ARGV[0]

include Heart

if one.nil?
  default
elsif one.match?(a)
  nyasocom_app_downloader
elsif one.match?(b)
  appmakerbr
elsif one.match?(c)
  creater
elsif one.match?(h)
  documents
elsif one.match?(i)
  downloader
elsif one.match?(k)
  cooker
elsif one.match?(m)
  appmaker
elsif one.match?(n)
  installer
elsif one.match?(s)
  nyasocom3_downloader
elsif one.match?(t)
  nyasocom2_downloader
elsif one.match?(v)
  version
elsif one.match?(d)
  databases
else
  puts 'No such option is found, please refer to the documentation.'
end

GC.compact

__END__
