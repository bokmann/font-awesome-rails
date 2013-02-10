require 'test_helper'

class FontAwesomeRailsTest < ActionDispatch::IntegrationTest
  test "engine is loaded" do
    assert_equal ::Rails::Engine, Font::Awesome::Rails::Engine.superclass
  end

  test "fonts are served" do
    get "/assets/fontawesome-webfont.eot"
    assert_response :success
    get "/assets/fontawesome-webfont.ttf"
    assert_response :success
    get "/assets/fontawesome-webfont.woff"
    assert_response :success
  end

  test "stylesheets are served" do
    get "/assets/font-awesome.css"
    assert_response :success
    get "/assets/font-awesome-ie7.min.css"
    assert_response :success
    get "/assets/font-awesome-ie7.css"
    assert_response :success
  end

  test "stylesheets contain asset pipeline references to fonts" do
    get "/assets/font-awesome.css"
    assert_match "/assets/fontawesome-webfont.eot",  response.body
    assert_match "/assets/fontawesome-webfont.eot?#iefix",  response.body
    assert_match "/assets/fontawesome-webfont.woff", response.body
    assert_match "/assets/fontawesome-webfont.ttf",  response.body
  end
end
