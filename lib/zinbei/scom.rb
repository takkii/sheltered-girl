# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Encoding.default_internal = 'UTF-8'

puts ''

class Scomber
  def sava
    one = ARGV[1]
    two = ARGV[2]
    three = /#{ARGV[3]}/o
    four = ARGV[4]

    File.open(two, 'a:utf-8', perm = 0o666) do |out_f|
      File.open(one) do |in_f|
        out_f.write in_f.read.gsub(three, four)
        print ' 置換処理を行い書き込み処理をしました、終了します... '
        in_f.close
        out_f.close
      end
    end
  end
end

Scomber.new.sava

puts ''

__END__
