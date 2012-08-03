# font-awesome-rails

This gem is a simple rebundling of the contents of font-awesome:

http://fortawesome.github.com/Font-Awesome/

In a format suitable for use with the Rails asset pipeline.

add this to your gemfile:

    gem 'font-awesome-rails'

and type

    bundle install

and now in your application.css you can include the css file like so:

    *= require 'font-awesome'



I'm not a fan of randomly grabbing files and adding them to my project - later on its always a pain when you need to figure out which version you're using and if there is a newer one...  so I'm going to do that work for you.  You get to use this gem with a well-defined version number, and I'll periodically update it with new stuff from the mainline project.  You'll know what version you're using and what the differences are.

note on version 0.2.0 - FontAwesome now includes scss and sass files, but when I used them instead of the plain ol css file included in the project, it wanted some compass libraries.  I'm a fan of compass, but including an entire tool like that in order to generate a @font_face tag seems a little much... I don't want this gem to require compass for such a trivial thing, so we are staying on the vanilla css file for now.


    version    FontAwesome's sha1 hash       Other additions
    0.1.0      378b2d7                       Simplest packaging as a gem as possible
    0.2.0      563a6f3                       Repackaged after their new release
    0.2.1      563a6f3                       Forgot I had patched the css to reflect the font assetified location.
    0.3.0      um, unknown.  Aditya Sanghi pulled it in and I wasn't watching.  Will make sure
               that doesn't happen again.
    
    
    
todo:

 - Needs s simple mechanism to test that the assets provided are available on the path expected.
 - I think the css should be an scss so we can compile to the expected asset path