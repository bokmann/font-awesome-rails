# font-awesome-rails [![Gem Version](https://badge.fury.io/rb/font-awesome-rails.png)](http://badge.fury.io/rb/font-awesome-rails) [![Build Status](https://secure.travis-ci.org/bokmann/font-awesome-rails.png)](http://travis-ci.org/bokmann/font-awesome-rails)

font-awesome-rails provides the
[Font-Awesome](http://fortawesome.github.com/Font-Awesome/) web fonts and
stylesheets as a Rails engine for use with the asset pipeline.

## Installation

Add this to your Gemfile:

```ruby
gem "font-awesome-rails"
```

and run `bundle install`.

## Usage

In your `application.css`, include the css file:

```css
/*
 *= require font-awesome
 */
```

Congrats! You now have scalable vector icon support. Pick an icon and check out the
[FontAwesome Examples](http://fortawesome.github.io/Font-Awesome/examples/).

### Sass Support

If you prefer [SCSS](http://sass-lang.com/docs.html), add this to your
`application.css.scss` file:

```scss
@import "font-awesome";
```

If you use the
[Sass indented syntax](http://sass-lang.com/docs/yardoc/file.INDENTED_SYNTAX.html),
add this to your `application.css.sass` file:

```sass
@import font-awesome
```

### IE7 Support

If you must support IE7, use a
[conditional comment](http://en.wikipedia.org/wiki/Conditional_comment) to
provide the `font-awesome-ie7.min.css` stylesheet to Internet Explorer.

```rhtml
<!--[if lt IE 8]>
<%= stylesheet_link_tag "font-awesome-ie7.min.css", media: "all" %>
<![endif]-->
```

In haml, that would look like:

```haml
/[if lt IE 8]
  = stylesheet_link_tag "font-awesome-ie7.min.css", media: "all"
```

Either way, Make sure that `font-awesome-ie7.min.css` is part of `config.assets.precompile` in your `environments/production.rb`.

```ruby
config.assets.precompile += %w( font-awesome-ie7.min.css )
```

Alternatively, if you already have a CSS file provided by a conditional
comment (say, `application-ie.css`), you can include the ie7 styleshet in
that:

```css
/*
 *= require font-awesome-ie7.min
 */
```

## Changes

    | Version | FontAwesome SHA1 | Notes / Other additions                                                   |
    |---------+------------------+---------------------------------------------------------------------------|
    |   0.1.0 | 378b2d7          | Simplest packaging as a gem as possible                                   |
    |   0.2.0 | 563a6f3          | Repackaged after their new release                                        |
    |   0.2.1 | 563a6f3          | Forgot I had patched the css to reflect the font assetified location.     |
    |   0.3.0 | (unknown)        | (sorry, will make sure that doesn't happen again)                         |
    |   0.4.0 | 05e5e5b          | Pullup request to 2.0 release of font-awesome                             |
    |   0.5.0 | contrib          | (christhekeele) Attempt to prepare request to 3.0 release of font-awesome |
    | 3.0.1.0 | 7d173f2          | 3.0.1 release (bug fixes and alignment improvements)                      |
    | 3.0.2.0 | 13d5dd3          | 3.0.2 release (better IE7 rendering)                                      |
    | 3.1.0.0 | a4612d8          | 3.1.0 release (new icons)                                                 |
    | 3.1.1.0 | 949a765          | 3.1.1 release (icon fixes)                                                |
    | 3.1.1.1 | 949a765          | asset_path -> font_path usage; Now requires Rails >= 3.2.                 |
    | 3.1.1.2 | 949a765          | vendor/assets -> app/assets; Improved Rails 4 support                     |
    | 3.1.1.3 | 949a765          | repackaged gem; cleaned out extraneous files                              |
    | 3.2.0.0 | a9065a1          | 3.2.0 release (new icons)                                                 |
    | 3.2.1.0 | b1a8ad4          | 3.2.1 release (stylesheet fixes)                                          |
    | 3.2.1.1 | b1a8ad4          | renamed Font::Awesome module to FontAwesome to avoid Font name conflicts  |
    | 3.2.1.2 | b1a8ad4          | fixed suffix on svg font url during asset precompilation                  |

**note on version 0.2.0**: FontAwesome now includes scss and sass files, but
when I used them instead of the plain ol css file included in the project, it
wanted some compass libraries.  I'm a fan of compass, but including an entire
tool like that in order to generate a @font_face tag seems a little much... I
don't want this gem to require compass for such a trivial thing, so we are
staying on the vanilla css file for now.

**Running on Rails 3.1?** Make sure to use version 3.1.1.0 or earlier.

## License

* The [Font Awesome](http://fortawesome.github.com/Font-Awesome) font is
  licensed under the [SIL Open Font License](http://scripts.sil.org/OFL).
* [Font Awesome](http://fortawesome.github.com/Font-Awesome) CSS files are
  licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
* The remainder of the font-awesome-rails project is licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
