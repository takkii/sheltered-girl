# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

class Flag
    def self.logo
        puts ''
        puts '[ ZINBEI ]'.center(60, '-')
        puts ''
        puts <<-DOC
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ))wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((
 ((                                                                    ))
  )) ========= ======  ||\\      || ||========   ||=========  ======   ((
 ((      / /     ||    || \\     || ||        )) ||             ||      ))
  ))    / /      ||    ||  \\    || ||        )) ||             ||     ((
 ((    / /       ||    ||   \\   || ||========   ||=======      ||      ))
  ))  / /        ||    ||    \\  || ||        )) ||             ||     ((
 ((  / /         ||    ||     \\ || ||        )) ||             ||      ))
  )) ========= ======  ||      \\|| ||========   ||=========  ======   ((
 ((                                                                    ))
  ))wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DOC
        puts 'Copyright © Takayuki Kamiyama, From 2012 to ' + DateTime.now.year.to_s
        puts ''
        puts '[ ZINBEI ]'.center(60, '-')
        puts ''
    end
end

begin
    Flag.logo
rescue Exception => e
    puts "#{e.backtrace}"
ensure
    GC.auto_compact
end

__END__