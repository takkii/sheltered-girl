# frozen_string_literal: true

class Claken
  def self.ika
    a = rand(15)
    print '～'
    i = 0
    i < a

    0.step(a) do |_|
      print '～'
    end

    puts '＜コ：彡'
    puts ''
  end
end

begin
  Claken.ika
rescue Exception => e
  puts "#{e.backtrace}"
ensure
  GC.auto_compact
end

__END__
