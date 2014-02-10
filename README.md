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
Then restart your webserver if it was previously running.

Congrats! You now have scalable vector icon support. Pick an icon and check out the
[FontAwesome Examples](http://fortawesome.github.io/Font-Awesome/examples/).

### Sass Support

If you prefer [SCSS](http://sass-lang.com/documentation/file.SASS_REFERENCE.html), add this to your
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

### Helpers

There are also some helpers (`fa_icon` and `fa_stacked_icon`) that make your
views _icontastic!_.

```ruby
fa_icon "camera-retro"
# => <i class="fa fa-camera-retro"></i>

fa_icon "camera-retro", text: "Take a photo"
# => <i class="fa fa-camera-retro"></i> Take a photo

fa_icon "quote-left 4x", class: "muted pull-left"
# => <i class="fa fa-quote-left fa-4x muted pull-left"></i>

content_tag(:li, fa_icon("check li", text: "Bulleted list item"))
# => <li><i class="fa fa-check fa-li"></i> Bulleted list item</li>
```

```ruby
fa_stacked_icon "twitter", base: "square-o"
# => <span class="fa-stack">
# =>   <i class="fa fa-square-o fa-stack-2x"></i>
# =>   <i class="fa fa-twitter fa-stack-1x"></i>
# => </span>

fa_stacked_icon "terminal inverse", base: "square", class: "pull-right", text: "Hi!"
# => <span class="fa-stack pull-right">
# =>   <i class="fa fa-square fa-stack-2x"></i>
# =>   <i class="fa fa-terminal fa-inverse fa-stack-1x"></i>
# => </span> Hi!

```

**Note:** In Rails 3.2, make sure font-awesome-rails is outside the bundler asset group
so that these helpers are automatically loaded in production environments.

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
    | 3.2.1.3 | b1a8ad4          | added `fa_icon` and `fa_stacked_icon` view helpers                        |
    | 4.0.0.0 | 4e92eeb          | 4.0.0 release (new naming conventions, new icons, IE7 support dropped)    |
    | 4.0.1.0 | c84c8ab          | 4.0.1 release (fixed hdd icon and fa-stack alignment)                     |
    | 4.0.3.0 | 0373b63          | 4.0.3 release (minor icon renames and updates)                            |
    | 4.0.3.1 | 0373b63          | asset pipeline improvements                                               |

**note on version 0.2.0**: FontAwesome now includes scss and sass files, but
when I used them instead of the plain ol css file included in the project, it
wanted some compass libraries.  I'm a fan of compass, but including an entire
tool like that in order to generate a @font_face tag seems a little much... I
don't want this gem to require compass for such a trivial thing, so we are
staying on the vanilla css file for now.

**Running on Rails 3.1?** Make sure to use version 3.1.1.0 or earlier.

**Upgrading from 3.*?** FontAwesome now requires the use of the fa class
with every icon. Prepend the `fa` class to existing icons:

```css
  /* FontAwesome 3 Syntax */
  <i class="icon-github"></i>

  /* FontAwesome 4 Syntax */
  <i class="fa fa-github"></i>
```

**Note when deploying to sub-domains**
It is sometimes the case that deploying a Rails application to a production
environment requires the application to be hosted at a sub-domain on the server.
This may be the case, for example, if Apache HTTPD or Nginx is being used as a
front-end proxy server, with Rails handling only requests that come in to a sub-domain
such as `http://myserver.example.com/myrailsapp`. In this case, the
FontAwesome gem (and other asset-serving engines) needs to know the sub-domain,
otherwise you can experience a problem roughly described as ["my app works
fine in development, but fails when I deploy
it"](https://github.com/bokmann/font-awesome-rails/issues/74).

To fix this, set the *relative URL root* for the application. In the
environment file for the deployed version of the app, for example
`config/environments/production.rb`,
set the config option `action_controller.relative_url_root`:

    MyApp::Application.configure do
      ...

      # set the relative root, because we're deploying to /myrailsapp
      config.action_controller.relative_url_root  = "/myrailsapp"

      ...
    end

The default value of this variable is taken from `ENV['RAILS_RELATIVE_URL_ROOT']`,
so configuring the environment to define `RAILS_RELATIVE_URL_ROOT` is an alternative strategy.

## License

* The [Font Awesome](http://fortawesome.github.com/Font-Awesome) font is
  licensed under the [SIL Open Font License](http://scripts.sil.org/OFL).
* [Font Awesome](http://fortawesome.github.com/Font-Awesome) CSS files are
  licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
* The remainder of the font-awesome-rails project is licensed under the
  [MIT License](http://opensource.org/licenses/mit-license.html).
