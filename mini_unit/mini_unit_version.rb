# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
require 'minitest/autorun'
require 'minitest/unit'
require 'version'

# Unit-test file load.
class MiniUnitVersion < Minitest::Test
  def setup
    @standard_versions = EngineLeft.version
    version = '5.0.0'
    t = Date.today
    build_day = t.strftime('%Y.%m.%d')
    @next_version = "#{version}-#{build_day}".freeze
  end

  def test_new
    refute_equal(@standard_versions, @next_version)
    assert_operator(@standard_versions, :<, @next_version)
  end

  def test_version_should_be_string
    assert_kind_of String, @standard_versions
    assert_instance_of String, @next_version
  end

  def test_version_should_be_string2
    assert_kind_of String, @standard_versions
    assert_instance_of String, @next_version
  end

  def test_nil_variable
    # assert_nil
  end

  def test_match
    # assert_match
  end

  def teardown
    # database network test add.
  end
end
# >> Loaded suite -
# >> Started
# >> .....
# >> Finished in 0.001312 seconds.
# >> -------------------------------------------------------------------------------
# >> 5 tests, 5 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 100% passed
# >> -------------------------------------------------------------------------------
# >> 3810.98 tests/s, 3810.98 assertions/s
