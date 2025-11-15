# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "#{File.dirname(__FILE__)}/../req/frame"

# Installer runner.
class InstallerRunner

  def self.install
    encoding_style
    nyasocom_custom_name
  end

  def self.create
    encoding_style
    nyasocom_sun_custom_name
  end

  def self.cook
    encoding_style
    nyasocom2_custom_name
  end

  def self.download
    encoding_style
    nyasocom_command
  end

  def self.nyasocom2_download
    encoding_style
    nyasocom2_command
  end

  def self.nyasocom3_download
    encoding_style
    nyasocom3_command
  end

  def self.nyasocom_app_download
    encoding_style
    nyasocom_app_command
  end

  def self.appmakers
    encoding_style
    app_maker
  end

  def self.app_maker_branches
    encoding_style
    app_maker_branch
  end

  def self.database
    encoding_style
    two = ARGV[1]

    pt = /\Apostgresql\z/
    pg = /\A--pg\z/

    if two.nil?
      puts <<-EOF

nyasocom_pg project, clone command.

heat db postgresql

heat db --pg

      EOF
    elsif two.match?(pt)
      postgresql
    elsif two.match?(pg)
      postgresql
    else
      puts 'No such option is found, please refer to the documentation.'
    end
  end

  private

  def self.encoding_style
    Encoding.default_internal = 'UTF-8'
    Encoding.default_external = 'UTF-8'
  end

  def self.nyasocom_custom_name
    one = ARGV[1]
    FileUtils.mkdir_p("./#{one}")
    FileUtils.cd("./#{one}")
    if system('git clone git@github.com:takkii/nyasocom_oss.git .', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_oss.git .')
    end
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Used nyasocom_frame to clone nyasocom_oss with any project name.

    EOF
  end

  def self.nyasocom2_custom_name
    two = ARGV[1]
    FileUtils.mkdir_p("./#{two}")
    FileUtils.cd("./#{two}")
    if system('git clone git@github.com:takkii/nyasocom2.git .', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom2.git .')
    end
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Used nyasocom_frame to clone nyasocom2 with any project name.

    EOF
  end

  def self.nyasocom_sun_custom_name
    sun = ARGV[1]
    FileUtils.mkdir_p("./#{sun}")
    FileUtils.cd("./#{sun}")
    if system('git clone git@github.com:takkii/nyasocom_sun_pg_win.git .', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_sun_pg_win.git .')
    end
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Used nyasocom_frame to clone nyasocom_sun_pg_win with any project name.

    EOF
  end

  def self.nyasocom_command
    if system('git clone git@github.com:takkii/nyasocom_oss.git', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_oss.git')
    end
    FileUtils.cd("./nyasocom_oss")
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned nyasocom_oss with nyasocom_frame.

    EOF
  end

  def self.postgresql
    if system('git clone git@github.com:takkii/nyasocom_pg.git', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_pg.git')
    end
    FileUtils.cd("./nyasocom_pg")
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned nyasocom_pg with nyasocom_frame.

    EOF
  end

  def self.nyasocom2_command
    if system('git clone git@github.com:takkii/nyasocom2.git', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom2.git')
    end
    FileUtils.cd("./nyasocom2")
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned nyasocom2 with nyasocom_frame.

    EOF
  end

  def self.nyasocom3_command
    if system('git clone git@github.com:takkii/nyasocom_sun_pg_win.git', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_sun_pg_win.git')
    end
    FileUtils.cd("./nyasocom_sun_pg_win")
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned nyasocom_sun_pg_win with nyasocom_frame.

    EOF
  end

  def self.nyasocom_app_command
    if system('git clone git@github.com:takkii/nyasocom_sun_app.git', exception: true)
    else
      system('git clone https://github.com:takkii/nyasocom_sun_app.git')
    end
    FileUtils.cd("./nyasocom_sun_app")
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned nyasocom_sun_app with nyasocom_frame.

    EOF
  end

  def self.app_maker
    encoding_style
    flh = ARGV[1]
    ghn = ARGV[2]
    gpp = ARGV[3]
    FileUtils.mkdir_p("./#{flh}")
    FileUtils.cd("./#{flh}")
    if system("git clone git@github.com:#{ghn}/#{gpp}.git .", exception: true)
    else
      system("git clone https://github.com:#{ghn}/#{gpp}.git .")
    end
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned GitHub with user/#{ghn} project/#{gpp}.

    EOF
  end

  def self.app_maker_branch
    encoding_style
    flh = ARGV[1]
    ghn = ARGV[2]
    gpp = ARGV[3]
    branch = ARGV[4]
    FileUtils.mkdir_p("./#{flh}")
    FileUtils.cd("./#{flh}")
    if system("git clone -b #{branch} git@github.com:#{ghn}/#{gpp}.git .", exception: true)
    else
      system("git clone -b #{branch} https://github.com:#{ghn}/#{gpp}.git .")
    end
    FileUtils.rm_rf("./.git")
    FileUtils.rm_rf("./.github")
    puts <<-EOF

Cloned GitHub with user/#{ghn} project/#{gpp} branch/#{branch}.

    EOF
  end
end

__END__
