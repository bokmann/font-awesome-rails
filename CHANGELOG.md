See [GitHub Releases](https://github.com/bokmann/font-awesome-rails/releases)

## Changes

| Version | FontAwesome SHA1 | Notes / Other additions                                            |
|---------|------------------|--------------------------------------------------------------------|
| 4.7.0.0 | `a8386aa` | [4.7.0 release](https://github.com/FortAwesome/Font-Awesome/pull/10012) (new icons)             |
| 4.6.3.1 | `8e241f2` | Removed version query string from font assets                                                   |
| 4.6.3.0 | `8e241f2` | [4.6.3 release](https://github.com/FortAwesome/Font-Awesome/pull/9189) (new brand icons)        |
| 4.6.2.0 | `e7cc59d` | [4.6.2 release](https://github.com/FortAwesome/Font-Awesome/pull/9117) (fixes and new icons)    |
| 4.6.1.0 | `6535013` | [4.6.1 release](https://github.com/FortAwesome/Font-Awesome/pull/8962) (minor stylesheet fixes) |
| 4.6.0.0 | `5697be9` | 4.6.0 release (new icons)                                                 |
| 4.5.0.1 | `dbc8d1b` | added official Rails 5 support                                            |
| 4.5.0.0 | `dbc8d1b` | 4.5.0 release (new icons)                                                 |
| 4.4.0.0 | `e554555` | 4.4.0 release (new icons)                                                 |
| 4.3.0.0 | `41b9ed0` | 4.3.0 release (new icons)                                                 |
| 4.2.0.0 | `a65bd93` | 4.2.0 release (new icons)                                                 |
| 4.1.0.0 | `2649d91` | 4.1.0 release (new icons)                                                 |
| 4.0.3.2 | `0373b63` | icon right alignment support in helpers                                   |
| 4.0.3.1 | `0373b63` | asset pipeline improvements                                               |
| 4.0.3.0 | `0373b63` | 4.0.3 release (minor icon renames and updates)                            |
| 4.0.1.0 | `c84c8ab` | 4.0.1 release (fixed hdd icon and fa-stack alignment)                     |
| 4.0.0.0 | `4e92eeb` | 4.0.0 release (new naming conventions, new icons, IE7 support dropped)    |
| 3.2.1.3 | `b1a8ad4` | added `fa_icon` and `fa_stacked_icon` view helpers                        |
| 3.2.1.2 | `b1a8ad4` | fixed suffix on svg font url during asset precompilation                  |
| 3.2.1.1 | `b1a8ad4` | renamed Font::Awesome module to FontAwesome to avoid Font name conflicts  |
| 3.2.1.0 | `b1a8ad4` | 3.2.1 release (stylesheet fixes)                                          |
| 3.2.0.0 | `a9065a1` | 3.2.0 release (new icons)                                                 |
| 3.1.1.3 | `949a765` | repackaged gem; cleaned out extraneous files                              |
| 3.1.1.2 | `949a765` | vendor/assets -> app/assets; Improved Rails 4 support                     |
| 3.1.1.1 | `949a765` | asset_path -> font_path usage; Now requires Rails >= 3.2.                 |
| 3.1.1.0 | `949a765` | 3.1.1 release (icon fixes)                                                |
| 3.1.0.0 | `a4612d8` | 3.1.0 release (new icons)                                                 |
| 3.0.2.0 | `13d5dd3` | 3.0.2 release (better IE7 rendering)                                      |
| 3.0.1.0 | `7d173f2` | 3.0.1 release (bug fixes and alignment improvements)                      |
|   0.5.0 | `contrib` | (christhekeele) Attempt to prepare request to 3.0 release of font-awesome |
|   0.4.0 | `05e5e5b` | Pullup request to 2.0 release of font-awesome                             |
|   0.3.0 | (unknown) | (sorry, will make sure that doesn't happen again)                         |
|   0.2.1 | `563a6f3` | Forgot I had patched the css to reflect the font assetified location.     |
|   0.2.0 | `563a6f3` | Repackaged after their new release                                        |
|   0.1.0 | `378b2d7` | Simplest packaging as a gem as possible                                   |

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
