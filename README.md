# font-awesome-rails

font-awesome-rails provides the
[Font-Awesome](http://fortawesome.github.com/Font-Awesome/) web fonts and
stylesheets as a Rails engine for use with the asset pipeline.

## Installation

Add this to your Gemfile:

    gem "font-awesome-rails"

and run `bundle install`.

## Usage

In your `application.css`, include the css file:

    *= require font-awesome

If you prefer [SCSS](http://sass-lang.com/docs.html), add this to your
`application.css.scss` file:

    @import "font-awesome";

If you use the
[Sass indented syntax](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html),
add this to your `application.css.sass` file:

    @import font-awesome

## IE7 Support

If you must support IE7, use a
[conditional comment](http://en.wikipedia.org/wiki/Conditional_comment) to
provide the `font-awesome-ie7.min.css` stylesheet to Internet Explorer.

    <!--[if lt IE 8]>
    <%= stylesheet_link_tag "font-awesome-ie7.min.css, media: "all" %>
    <![endif]-->

In haml, that would look like:

    /[if lt IE 8]
      = stylesheet_link_tag "font-awesome-ie7.min.css, media: "all"

Either way, Make sure that `font-awesome-ie7.min.css` is part of `config.assets.precompile` in your `environments/production.rb`.

    config.assets.precompile += %w( font-awesome-ie7.min.css )

Alternatively, if you already have a CSS file provided by a conditional
comment (say, `application-ie.css`), you can include the ie7 styleshet in
that:

    *= require font-awesome-ie7.min

## Changes

    Version   FontAwesome SHA1 Hash    Notes / Other additions
    --------  ----------------------   ------------------------
    0.1.0     378b2d7                  Simplest packaging as a gem as possible
    0.2.0     563a6f3                  Repackaged after their new release
    0.2.1     563a6f3                  Forgot I had patched the css to reflect the font assetified location.
    0.3.0     UNKNOWN                  Aditya Sanghi pulled it in and I wasn't watching.
                                       Will make sure that doesn't happen again.
    0.4.0     05e5e5b                  Pullup request to 2.0 release of font-awesome
    0.5.0     contrib, christhekeele   Attempt to prepare request to 3.0 release of font-awesome
    3.0.1.0   7d173f2                  3.0.1 release (bug fixes and alignment improvements)
    3.0.2.0   13d5dd3                  3.0.2 release (better IE7 rendering)

**note on version 0.2.0**: FontAwesome now includes scss and sass files, but
when I used them instead of the plain ol css file included in the project, it
wanted some compass libraries.  I'm a fan of compass, but including an entire
tool like that in order to generate a @font_face tag seems a little much... I
don't want this gem to require compass for such a trivial thing, so we are
staying on the vanilla css file for now.

## Todo

* Add a mechanism to test that the assets provided are available on the path
  expected.

## License

* The [Font Awesome](http://fortawesome.github.com/Font-Awesome) font is
  licensed under the [SIL Open Font License](http://scripts.sil.org/OFL).
* [Font Awesome](http://fortawesome.github.com/Font-Awesome) CSS files are
  licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
* The remainder of the font-awesome-rails project is licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
