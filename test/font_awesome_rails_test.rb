require 'test_helper'

class FontAwesomeRailsTest < ActionDispatch::IntegrationTest
  test "engine is loaded" do
    assert_equal ::Rails::Engine, Font::Awesome::Rails::Engine.superclass
  end
end
