# frozen_string_literal: true

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
