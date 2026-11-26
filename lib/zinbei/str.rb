# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

class ZinbeiStr
  def self.run
    open(ARGV[1]) do |f|
      while (name = f.readlines)
        name.sort!
        str = name.join(', ')
        p str.chomp!
        name.each do |n|
          puts n
        end
        exit!
      end
    end
  end
end

begin
  ZinbeiStr.run
rescue Exception => e
  puts "#{e.backtrace}"
ensure
  GC.auto_compact
end

__END__
