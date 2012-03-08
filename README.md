# Font::Awesome::Rails

I just discovered font-awesome:

http://fortawesome.github.com/Font-Awesome/

And being the fan of the Rails asset pipeline that I am, I thought it appropriate to bundle into an asset gem.  I'm over downloading and copying files into place for web projects... Why are we still banging rocks with sticks like that?  a package I can version and declare a dependency on is so much better.


But nothing is actually written yet.  The whole thing will take me about an hour to bundle up and release as a gem... I'm just declaring intent right now and will do it this weekend.

While their page is all about less and bootstrap, I'm going to provide a couple of helpers to use it with SASS in the rails asset pipeline.  I'll also come up with a few examples using it with my own ghbuttons-rails and semanticgs-rails gems as well.


My first reason for wanting this is to have a properly versioned resource, but at this time, Font Awesome doesn't have any branches/tags that indicate any version number.  To overcome this, my intent is to have a table that maps versions of this gem to the sha1 of Font Awesome's master that I create it from.  I'm trying to have semantic versioning as well.

version    FontAwesome's sha1 hash       Other additions
0.1.0      378b2d7                       Simplest packaging as a gem as possible