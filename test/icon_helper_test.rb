require 'test_helper'

class IconHelperTest < ActionView::TestCase
  include FontAwesome::Rails::IconHelper

  test "#fa_icon with no args should render a flag icon" do
    assert_icon i("icon-flag")
  end

  test "#fa_icon should render different individual icons" do
    assert_icon i("icon-flag"),         "flag"
    assert_icon i("icon-camera-retro"), "camera-retro"
    assert_icon i("icon-cog"),          "cog"
    assert_icon i("icon-github"),       "github"
  end

  test "#fa_icon should render icons with multiple modifiers" do
    assert_icon i("icon-pencil icon-fixed-width"),   "pencil fixed-width"
    assert_icon i("icon-flag icon-4x"),              "flag 4x"
    assert_icon i("icon-refresh icon-2x icon-spin"), "refresh 2x spin"
  end

  test "#fa_icon should render icons with array modifiers" do
    assert_icon i("icon-flag"),                      ["flag"]
    assert_icon i("icon-ok icon-li"),                ["ok", "li"]
    assert_icon i("icon-flag icon-4x"),              ["flag", "4x"]
    assert_icon i("icon-refresh icon-2x icon-spin"), ["refresh", "2x", "spin"]
  end

  test "#fa_icon should incorporate additional class styles" do
    assert_icon i("icon-flag pull-right"),               "flag",         :class => "pull-right"
    assert_icon i("icon-flag icon-2x pull-right"),       ["flag", "2x"], :class => ["pull-right"]
    assert_icon i("icon-ok icon-li pull-right special"), "ok li",        :class => "pull-right special"
    assert_icon i("icon-ok pull-right special"),         "ok",           :class => ["pull-right", "special"]
  end

  test "#fa_icon should incorporate a text suffix" do
    assert_icon "#{i("icon-camera-retro")} Take a photo", "camera-retro", :text => "Take a photo"
  end

  test "#fa_icon should html escape text" do
    assert_icon "#{i("icon-camera-retro")} &lt;script&gt;&lt;/script&gt;", "camera-retro", :text => "<script></script>"
  end

  test "#fa_icon should not html escape safe text" do
    assert_icon "#{i("icon-camera-retro")} <script></script>", "camera-retro", :text => "<script></script>".html_safe
  end

  test "#fa_icon should pull it all together" do
    assert_icon "#{i("icon-camera-retro pull-right")} Take a photo", "camera-retro", :text => "Take a photo", :class => "pull-right"
  end

  test "#fa_stacked_icon should render a stacked icon" do
    expected = %(<span class="icon-stack">#{i("icon-check-empty icon-stack-base")}#{i("icon-twitter")}</span>)
    assert_dom_equal expected, fa_stacked_icon("check-empty", "twitter")
    expected = %(<span class="icon-stack">#{i("icon-sign-blank icon-stack-base")}#{i("icon-terminal icon-light")}</span>)
    assert_dom_equal expected, fa_stacked_icon("sign-blank", "terminal light")
  end

  test "#fa_stacked_icon should incorporate additional class styles" do
    expected = %(<span class="icon-stack pull-right">#{i("icon-check-empty icon-stack-base")}#{i("icon-twitter")}</span>)
    assert_dom_equal expected, fa_stacked_icon("check-empty", "twitter", :class => "pull-right")
  end

  test "#fa_stacked_icon should html escape text" do
    expected = %(<span class="icon-stack">#{i("icon-check-empty icon-stack-base")}#{i("icon-twitter")}</span> &lt;script&gt;)
    assert_dom_equal expected, fa_stacked_icon("check-empty", "twitter", :text => "<script>")
  end

  test "#fa_stacked_icon should not html escape safe text" do
    expected = %(<span class="icon-stack">#{i("icon-check-empty icon-stack-base")}#{i("icon-twitter")}</span> <script>)
    assert_dom_equal expected, fa_stacked_icon("check-empty", "twitter", :text => "<script>".html_safe)
  end

  private

  def assert_icon(expected, *args)
    message = "`fa_icon(#{args.inspect[1...-1]})` should return `#{expected}`"
    assert_dom_equal expected, fa_icon(*args), message
  end

  def i(classes)
    %(<i class="#{classes}"></i>)
  end
end
