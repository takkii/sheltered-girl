# frozen_string_literal: true

require 'persona'
require 'complex'

# mandelbort set
class Set
    def self.mandelbrot(cr, ci)
        limit = 95
        iterations = 0
        c = Complex(cr, ci)
        z = Complex(0, 0)

        while iterations<limit and z.abs<10
            z = z*z+c
            iterations += 1
        end
        return iterations
    end

    def self.mandel_calc(min_r, min_i, max_r, max_i, res)
        cur_i = min_i

        while cur_i > max_i
            print "|"
            cur_r = min_r

            while cur_r < max_r
                ch = 127 - mandelbrot(cur_r, cur_i)
                printf "%c", ch
                cur_r += res
            end

            print "|\n"
            cur_i -= res
        end
    end
end

begin
    puts "#{Set.mandel_calc(-2, 1, 1, -1, 0.04)}"
rescue Exception => e
    puts "#{e.backtrace}"
    Persona.new.gun
    tanraku_log
ensure
    GC.auto_compact
end

__END__