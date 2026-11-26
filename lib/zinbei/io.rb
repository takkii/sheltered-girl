# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

class ZinbeiIO
  def self.run
    count = 0

    open(ARGV[1]) do |f|
      while f.gets
        f.each_line do
          count += 1
        end
      end

      print 'LineNumber is : '
      puts count

      print 'Did it read to the last of a page?：'
      puts f.eof?
    end
  end
end

begin
  ZinbeiIO.run
rescue Exception => e
  puts "#{e.backtrace}"
ensure
  GC.auto_compact
end

__END__
