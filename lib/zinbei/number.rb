# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Number Class
class ZinbeiNum
  def self.run
    open(ARGV[1]) do |f|
      while (name = f.gets)
        risk = name.encode('UTF-8')
        printf('%4d : %s', f.lineno, risk)
      end
      puts ''
      exit!
    end
  end
end

begin
  ZinbeiNum.run
rescue Exception => e
  puts "#{e.backtrace}"
ensure
  GC.auto_compact
end

__END__
