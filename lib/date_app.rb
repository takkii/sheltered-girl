require 'date'

class WatchDate
  attr_reader :app

  def initialize
    @app = Time.now
  end

  def remove
    remove_instance_variable(:@app)
  end
end

puts WatchDate.new.remove
# _posts date timestamp
# 2025-01-13 13:39:34 +0900
