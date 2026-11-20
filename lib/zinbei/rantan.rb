# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Encoding.default_internal = 'UTF-8'

puts ''

# Scan class
class Scan
  def search_text
    File.open(ARGV[1]) do |f|
      while (str2 = f.gets)
        str = str2.chomp!
        three = /#{ARGV[2]}/o
        str3 = str
        begin
          if str3.match(three) || {}[:match]
            printf('%2d : %s', f.lineno, str)
            puts ''
          end
        rescue StandardError => e
          puts e.backtrace
        end
      end
    end
  end
end

Scan.new.search_text

puts ''

__END__
