# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "#{File.dirname(__FILE__)}/../req/frame"

# heats module
module Hearts
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
      GC.auto_compact
    end
  end

  def creater
    require 'install'
    begin
      InstallerRunner.create
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end

  def cooker
    require 'install'
    begin
      InstallerRunner.cook
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end

  def downloader
    require 'install'
    begin
      InstallerRunner.download
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end

  def nyasocom_two_downloader
    require 'install'
    begin
      InstallerRunner.nyasocom_two_download
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end

  def purplehaze_downloader
    require 'install'
    begin
      InstallerRunner.purplehaze_download
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end

  def nyasocom_app_downloader
    require 'install'
    begin
      InstallerRunner.nyasocom_app_download
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end

  def hyokaproject_downloader
    require 'install'
    begin
      InstallerRunner.hyokaproject_download
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end

  def databases
    require 'install'
    begin
      InstallerRunner.database
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end

  def appmaker
    require 'install'
    begin
      InstallerRunner.appmakers
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end

  def appmakerbr
    require 'install'
    begin
      InstallerRunner.app_maker_branches
    rescue LoadError => e
      puts e.backtrace
    ensure
      GC.auto_compact
    end
  end



  def default
    str = 'nyasocom_frame is a framework for generating web applications. '
    puts str
  end

  def documents
    puts text = <<-EOS
# nyasocom framework information
heats

# version notation
heats -v

# nyasocom_oss project template generated
heats ichi

# nyasocom_two project template generated
heats ni

# purplehaze project template generated
heats purple

# hyokaproject templete generated
heats hyoka

# nyasocom_sun_app project template generated
heats app

# template generation for nyasocom_oss
heats new [Folder_Name]
heats new example

# template generation for nyasocom_two
heats cook [Folder_Name]
heats cook example

# template generation for purplehaze
heats create [Folder_Name]
heats create example

# nyasocom_pg project template generated
heats db postgresql
heats db --pg

# github project templete generated
heats make nyasocom takkii nyasocom_oss

# github project templete generated + branch_name
heats branch nyasocom takkii nyasocom_oss main

# HELP
heats -h
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
s = /\Apurple\z/
t = /\Ani\z/
o = /\Ahyoka\z/
v = /\A[-][v]\z/

one = ARGV[0]

include Hearts

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
  purplehaze_downloader
elsif one.match?(t)
  nyasocom_two_downloader
elsif one.match?(v)
  version
elsif one.match?(d)
  databases
elsif one.match?(o)
  hyokaproject_downloader
else
  puts 'No such option is found, please refer to the documentation.'
end

GC.auto_compact

__END__
