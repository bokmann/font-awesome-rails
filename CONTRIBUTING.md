## Found an Issue?

If you think you found a problem, we ask that you first run through these
debugging steps to make sure your environment is clean. The results of these
steps will also help us help you diagnose the issue.

1. Make sure the [icon still exists in FontAwesome](http://fontawesome.io/icons/).
1. Be sure to restart your development server after bundle updating to font-awesome-rails 4.0.0.0.
1. Be sure to rename all your icon classes to match the [new Font Awesome naming convention in v4](http://fortawesome.github.io/Font-Awesome/whats-new/#new-naming) (note: We recommend using our `fa_icon` view helper for this instead).
1. If using the `fa_icon` helper and you are having trouble in your production environment, make sure the gem is listed outside of your assets group in your Gemfile.
1. Please make sure that no other gem dependencies in your project also include outdated versions of the FontAwesome fonts.
1. Please make sure the `public/assets` directory is empty (a local asset precompile can fill this directory and override any other assets in development).
1. If still having trouble, paste the results of `bundle list | grep  '\(rails\)\|\(awesome\)` (full `bundle list` can sometimes be better)

## Want to Contribute?

Awesome. We love help, but before getting started, please read:

**[Don't "Push" Your Pull Requests](http://www.igvita.com/2011/12/19/dont-push-your-pull-requests/)**

## Ready for a Pull-Request?

1. Fork the repo.

2. Run the tests. We only take pull requests with passing tests, and it's great
to know that you have a clean slate: `bundle && bundle exec rake`

3. Add a test for your change. Only refactoring and documentation changes
require no new tests. If you are adding functionality or fixing a bug, we need
a test!

4. Make the test pass.

5. Push to your fork and submit a pull request.

At this point you're waiting on us. We like to at least comment on, if not
accept, pull requests within three business days (and, typically, one business
day). We may suggest some changes or improvements or alternatives.

Some things that will increase the chance that your pull request is accepted,
taken straight from the Ruby on Rails guide:

## Conventions

* Use Rails idioms and helpers.
* Include tests that fail without your code, and pass with your code.
* Update the documentation, the surrounding one, examples elsewhere, guides,
  whatever is affected by your contribution

Syntax:

* Two spaces, no tabs.
* No trailing whitespace. Blank lines should not have any space.
* Prefer &&/|| over and/or.
* MyClass.my_method(my_arg) not my_method( my_arg ) or my_method my_arg.
* a = b not a=b.
* Follow the conventions you see used in the source already.
