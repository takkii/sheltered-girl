# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "#{File.dirname(__FILE__)}/../req/himekuri"

class HimekuriClass
  def himekuri_print
    dt = Date.today
    week = %w[日 月 火 水 木 金 土][dt.wday]
    print '時刻を表示 : '
    t = Time.new # 今日の日付と時刻
    print t.strftime('%Y年%m月%d日 : %H時%M分%S秒 : ')
    puts "#{week}曜日"
  end

  def count_print
    t = Time.new
    x = Time.mktime(t.year, t.month, t.day)
    y = Time.mktime(t.year + 1, 1, 1)

    # 1years 365 days.
    if (((y - x) / 60 / 60 / 24) - 1).round.to_i.zero?
      puts '年の瀬、今年もお世話になりました。来年もよろしくお願いします！'
    elsif (((y - x) / 60 / 60 / 24) - 1).round.to_i == 1
      puts '元旦、新年明けましておめでとうございます！'
    else
      puts "来年の1月1日まであと: #{(((y - x) / 60 / 60 / 24) - 1).round} 日です"
    end
  end

  def reiwa_print
    # ------------------------------

    # ------------------------------
    t = Time.new # 今日の日付と時刻
    td = Date.today

    # 令和2年目以降
    nen = %w[令和]

    # 平成から令和の始まり
    # nen = ['平成', '令和']
    # ------------------------------

    # 2019/5/1以降
    # if ("#{td.year}".to_s+"#{td.month}".to_s).match?(/^20201$/)
    # if "#{td.year}" + "#{td.month}" =~ /^20201$/
    #  puts (nen[1] + "#{(td.year - 2018)}年"+"#{td.month}月"+"#{td.day}日") +" "+t.to_date.jisx0301
    # else
    #  puts (nen[1] + "#{(td.year - 2018)}年".gsub(/[1]/,"元")+"#{td.month}月"+"#{td.day}日") +" "+t.to_date.jisx0301
    # end

    # 2020/1/1以降
    puts "#{nen[0] + "#{td.year - 2018}年" + "#{td.month}月" + "#{td.day}日"} : #{t.to_date.jisx0301}"
  end

  def wahugetsu_print
    td = Date.today
    nen = %w[令和]
    nen_y = %w[無 睦月 如月 弥生 卯月 皐月 水無月 文月 葉月 長月 神無月 霜月 師走][td.month]

    begin
      raise '「無」に辿り着いてはいけません！' if td.month.to_s.to_i.zero?


      puts("#{nen[0]}#{td.year - 2018}年#{td.month}月 : #{nen_y}")
    rescue StandardError => e
      puts e.backtrace
    end
  end

  def reiwa
    td = Date.today
    # nen = %w(平成 令和)
    # 2019/5/1以降
    # if ("#{td.year}".to_s+"#{td.month}".to_s).match?(/^20201$/)
    #  (nen[1] + "#{(td.year - 2018)}年"+"#{td.month}月"+"#{td.day}日")
    # else
    #  (nen[1] + "#{(td.year - 2018)}年".gsub(/[1]/,"元")+"#{td.month}月"+"#{td.day}日")
    # end

    # 2020/1/1以降
    nen = %w[令和]
    "#{nen[0]}#{td.year - 2018}年#{td.month}月#{td.day}日#{%w[日 月 火 水 木 金 土][td.wday]}曜日"
  end

  def himekuri
    dt = Date.today
    week = %w[日 月 火 水 木 金 土][dt.wday]
    t = Time.new # 今日の日付と時刻
    "#{t.strftime('%Y年%m月%d日 : %H時%M分%S秒 : ')}#{week}曜日"
  end

  def count
    t = Time.new
    x = Time.mktime(t.year, t.month, t.day)
    y = Time.mktime(t.year + 1, 1, 1)

    # 1years 365 days.
    # 1years 365 days.
    if (((y - x) / 60 / 60 / 24) - 1).round.to_i.zero?
      '年の瀬、今年もお世話になりました。来年もよろしくお願いします！'
    elsif (((y - x) / 60 / 60 / 24) - 1).round.to_i == 1
      '元旦、新年明けましておめでとうございます！'
    else
      "来年の1月1日まであと: #{(((y - x) / 60 / 60 / 24) - 1).round} 日です"
    end
  end

  def wahugetsu_web
    td = Date.today
    nen = %w[令和]
    nen_y = %w[無 睦月 如月 弥生 卯月 皐月 水無月 文月 葉月 長月 神無月 霜月 師走][td.month]

    begin
      raise '「無」に辿り着いてはいけません！' if td.month.to_s.to_i.zero?


      "#{nen[0]}#{td.year - 2018}年#{td.month}月 : #{nen_y}"
    rescue StandardError => e
      e.backtrace
    end
  end

  def version
    print '日めくり数え番号 : '
    puts Himekuri::VERSION
  end

  def self.zella_ts
    nodejs_path = "node" + " " + "#{File.dirname(__FILE__) + '/zella.js'}".to_s
    stdout_js, stderr_js, status_js = Open3.capture3(nodejs_path)
    stdout_js
  end

  def self.zella_py
    nodejs_path = "python" + " " + "#{File.dirname(__FILE__) + '/timestamp.py'}".to_s
    stdout_py, stderr_py, status_py = Open3.capture3(nodejs_path)
    stdout_py
  end

  def help
    puts 'HELP'.center(60, '-')
    puts ''
    puts 'koyomi'
    puts ''
    HimekuriClass.new.himekuri_print
    HimekuriClass.new.count_print
    HimekuriClass.new.reiwa_print
    HimekuriClass.new.version
    HimekuriClass.new.wahugetsu_print
    puts ''
    puts 'koyomi -r'
    puts ''
    HimekuriClass.new.himekuri_print
    puts ''
    puts 'koyomi -k'
    puts ''
    HimekuriClass.new.count_print
    puts ''
    puts 'koyomi -c'
    puts ''
    HimekuriClass.new.reiwa_print
    puts ''
    puts 'koyomi -v'
    puts ''
    HimekuriClass.new.version
    puts ''
    puts 'koyomi -w'
    puts ''
    HimekuriClass.new.wahugetsu_print
    puts ''
    puts 'koyomi -z'
    puts ''
    puts Zella.formula
    puts ''
    puts 'koyomi -z 2024 4 11'
    puts ''
    puts '2024年4月11日 : 木曜日'
    puts ''
    puts 'koyomi -t'
    puts ''
    puts HimekuriClass.zella_ts
    puts ''
    puts 'koyomi -p'
    puts ''
    puts HimekuriClass.zella_py
    puts ''
    puts 'HELP'.center(60, '-')
  end
end

__END__
