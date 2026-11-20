## 環境構築

```ruby
gem install sheltered-girl-4.0.8.6.gem
Using rubygems directory: C:/Users/sudok/.local/share/gem/ruby/4.0.0
Successfully installed nokogiri-1.19.4-x64-mingw-ucrt
Building native extensions. This could take a while...
Successfully installed io-console-0.9.5
Successfully installed csv-3.3.7
Successfully installed sheltered-girl-4.0.8.6
Parsing documentation for nokogiri-1.19.4-x64-mingw-ucrt
Parsing documentation for io-console-0.9.5
Installing ri documentation for io-console-0.9.5
Parsing documentation for csv-3.3.7
Installing ri documentation for csv-3.3.7
Parsing documentation for sheltered-girl-4.0.8.6
Installing ri documentation for sheltered-girl-4.0.8.6
Done installing documentation for nokogiri, io-console, csv, sheltered-girl after 6 seconds
4 gems installed

C:\Users\sudok\GitHub\sheltered-girl>gem cleanup
Cleaning up installed gems...
Attempting to uninstall io-console-0.9.4
Successfully uninstalled io-console-0.9.4
Attempting to uninstall csv-3.3.6
Successfully uninstalled csv-3.3.6
Clean up complete

C:\Users\sudok\GitHub\sheltered-girl>ruby ./runner/mini.rb
Run options: --seed 46360

# Running:

........................bench_kind_algorithm_constant    0.000027        0.000023        0.000017       0.000024        0.000018
.bench_instance_algorithm_constant       0.000030        0.000020        0.000024        0.000021       0.000018
.bench_equal_algorithm_constant  0.000036        0.000028        0.000023        0.000020      0.000029
.............

Finished in 0.093716s, 416.1523 runs/s, 1664.6090 assertions/s.

39 runs, 156 assertions, 0 failures, 0 errors, 0 skips

C:\Users\sudok\GitHub\sheltered-girl>ruby ./runner/full.rb

~~~~~~~~~~~~~~~~~~~~~~~~~~ mini_test in filename list ~~~~~~~~~~~~~~~~~~~~~~~~~~

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ minitest file load ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

C:/Users/sudok/GitHub/sheltered-girl/mini_test/mini_test_date.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_test/mini_test_encode.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_test/mini_test_method.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_test/mini_test_search.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_test/mini_test_sort.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_test/mini_test_updown.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_test/mini_test_version.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_test/test_helper.rb

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ minitest file load ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

~~~~~~~~~~~~~~~~~~~~~~~~~~ mini_test in filename list ~~~~~~~~~~~~~~~~~~~~~~~~~~



~~~~~~~~~~~~~~~~~~~~~~~~~~ mini_test in filename list ~~~~~~~~~~~~~~~~~~~~~~~~~~

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ minitest file load ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

C:/Users/sudok/GitHub/sheltered-girl/mini_unit/mini_unit_benchmark.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_unit/mini_unit_date.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_unit/mini_unit_encode.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_unit/mini_unit_matcher.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_unit/mini_unit_method.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_unit/mini_unit_sort.rb
C:/Users/sudok/GitHub/sheltered-girl/mini_unit/mini_unit_version.rb

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ minitest file load ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

~~~~~~~~~~~~~~~~~~~~~~~~~~ mini_test in filename list ~~~~~~~~~~~~~~~~~~~~~~~~~~


Run options: --seed 12164

# Running:

.................bench_equal_algorithm_constant  0.000032        0.000023        0.000018      0.000022         0.000023
.bench_kind_algorithm_constant   0.000029        0.000029        0.000024        0.000019      0.000022
.bench_instance_algorithm_constant       0.000031        0.000020        0.000024        0.000020       0.000018
....................

Finished in 0.090749s, 429.7559 runs/s, 1719.0234 assertions/s.

39 runs, 156 assertions, 0 failures, 0 errors, 0 skips

C:\Users\sudok\GitHub\sheltered-girl>ruby ./execute/kaede ./lib/*.rb
ruby: No such file or directory -- ./execute/kaede (LoadError)

C:\Users\sudok\GitHub\sheltered-girl>ruby ./execute/kaede.rb ./lib/*.rb
Performance： 0.0483175 sec.

C:\Users\sudok\GitHub\sheltered-girl>cd execute

C:\Users\sudok\GitHub\sheltered-girl\execute>ls
kaede.rb  kinmokusei.rb

C:\Users\sudok\GitHub\sheltered-girl\execute>cd ..

C:\Users\sudok\GitHub\sheltered-girl>ruby ./execute/kinmokusei.rb
MyError, Running VERSION: ruby 4.0.9 (2026-10-23 revision 3e93b23afc) +PRISM [x64-mingw-ucrt]

C:\Users\sudok\GitHub\sheltered-girl>balance
-------------------------- Thanks --------------------------

rupture project is memorial tanraku project.

Special Thanks, Copyright c 2010-2024 Author Takayuki Kamiyama.

-------------------------- Thanks --------------------------

C:\Users\sudok\GitHub\sheltered-girl>balance -h

--------------------------- help ---------------------------

    == Contributing to rupture

    - airplain projects is source management, In USB memory stick.

    # Persona Class and Isora Method / Other Class and Method.

    Isora = Class.new(Persona)
    Persona.new.gun

    YouError = Class.new(ScriptError)
    Nekonyan.new.bocchi

    WhoError = Class.new(SignalException)
    Ranko.new.sassin

    CatError = Class.new(NoMemoryError)
    CatError.new.kill

    DogError = Class.new(SystemExit)
    DogError.new.gohan

--------------------------- help ---------------------------


C:\Users\sudok\GitHub\sheltered-girl>balance -u
Does not command founded, [help/-h -c -t] each others.

C:\Users\sudok\GitHub\sheltered-girl>balance -c
Anything elses throws Exception, It will be searched for mine.

C:\Users\sudok\GitHub\sheltered-girl>balance -t
Isora : Isora
C:/Users/sudok/.local/share/gem/ruby/4.0.0/gems/sheltered-girl-4.0.8.6/lib/persona.rb:14:in 'Persona#gun'                              C:/Users/sudok/.local/share/gem/ruby/4.0.0/gems/sheltered-girl-4.0.8.6/bin/balance:100:in '<top (required)>'                              C:/Ruby40-x64/lib/ruby/site_ruby/4.0.0/rubygems.rb:305:in 'Kernel#load'                              C:/Ruby40-x64/lib/ruby/site_ruby/4.0.0/rubygems.rb:305:in 'Gem.activate_and_load_bin_path'                              C:/Users/sudok/AppData/Local/Microsoft/WindowsApps/balance:36:in '<main>'
["C:/Users/sudok/.local/share/gem/ruby/4.0.0/gems/sheltered-girl-4.0.8.6/lib/persona.rb:117:in 'Kernel#raise'", "C:/Users/sudok/.local/share/gem/ruby/4.0.0/gems/sheltered-girl-4.0.8.6/lib/persona.rb:117:in 'Tanraku#tanraku_exit'", "C:/Users/sudok/.local/share/gem/ruby/4.0.0/gems/sheltered-girl-4.0.8.6/bin/balance:101:in '<top (required)>'", "C:/Ruby40-x64/lib/ruby/site_ruby/4.0.0/rubygems.rb:305:in 'Kernel#load'", "C:/Ruby40-x64/lib/ruby/site_ruby/4.0.0/rubygems.rb:305:in 'Gem.activate_and_load_bin_path'", "C:/Users/sudok/AppData/Local/Microsoft/WindowsApps/balance:36:in '<main>'"]
--> Tanraku_Exit Method Exception

speak
フィボナッチ数列を出力します!

1 1 2 3 5 8 13 21 34

helpを入力またはTab補完で実行しましょう!

output

---------------------------OUTPUT---------------------------

外部コマンドを実行できます!

---------------------------OUTPUT---------------------------

> ruby C:/Users/sudok/GitHub/sheltered-girl/execute/kaede.rb C:/Users/sudok/GitHub/sheltered-girl/*/*.rb

Performance： 0.0785585 sec.

終了は exit を入力してください！
exit
```

### ミニテストランナーの仕様

#### minitest/runner.rb

```markdown
# Mini(msg = 第一引数:boolean default is false, msg_dir = 第二引数:String)
Mini(msg = false, msg_dir = '/mini_test/')

# MiniW(msg = 第一引数:boolean default is false, wsl_dir = '第二引数', msg_dir = '第三引数')
MiniW(msg = false, wsl_dir = '/mnt/c/Users/username', msg_dir = '/mini_test/')
```

#### minitest/full_runner.rb

```markdown
# Full(msg = 第一引数:boolean default is false, win_dir = 第二引数:String, msg_dir = 第三引数:String)
Full(msg = false, win_dir = 'C:/Users/username', msg_dir = '/mini_test/')

# FullW(msg = 第一引数:boolean default is false, wsl_dir = '第二引数', msg_dir = '第三引数')
FullW(msg = false, wsl_dir = '/mnt/c/Users/username', msg_dir = '/mini_test/')
```

#### runner/full_runner.rb | runner/mini_runner.rb

※ Mini&MiniW / Full&FullWの仕様を策定しました。

### 短絡の仕様

```ruby
# 独自例外を発生し、次の処理に転移します
Object.tanraku

# 独自例外を発生し、設定した場所で処理が終了します
Object.tanraku_exit

# 独自例外を発生し、処理が終了します。
Object.tanraku_execute

# 短絡のログを記録します
Object.tanraku_log
```

#### 同機能を関数として使用できます。

```markdown
tanraku
tanraku_exit
tanraku_execute
tanraku_log
```

#### tanraku_matchの詳細

```markdown
tanraku_match(比較先, 正規表現, 実行する処理)
```

#### tanraku_matchの明示的な型

```markdown
tanraku_match(String, String, None)
```

#### tanraku_match 使用例 (常に発動)

```ruby
require 'tanraku'

tanraku_match('あいうえお', '/あ/o', tanraku_execute)
```

#### 使用例の出力結果

```markdown
# ... backtrace 表示
TypeError : exception class/object expected
--> Tanraku_Execute Method Exception
```

※ Tanraku_VERSION: 1.1.4
