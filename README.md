# docs

A Jekyll documentation site for SIG-Game's games

## Jekyll

The site is organized so that the [Jekyll static site generator ](https://jekyllrb.com/) can render everything into a nice static site for us.
It's lovely, since we can write a couple of templates for the boilerplate (style, scripts, etc.) and let Jekyll assemble it all together.

If you're adding new pages to the site (e.g., a page for a new MegaMiner), please add a **markdown** file.
Only add HTML files when it's really necessary.
Markdown is much more readable.

Adding generated docs (Sphinx, JavaDoc, and the like) is simple.
Just drop the static files in the appropriate directory for the competition.
Generated chess docs go in `chess/`; generated Plants docs go in `plants/`.
Easy peasy.

Also, don't forget to make sure the links to docs go to the right place.
Dead links aren't great.

Update `_data/docs.yml` as required to change the links in the sidebar.

## Building the Site

You should probably build this using bundler.
For some reason it makes things a little less awful.

~~~ shell
# Install bundler
gem install bundler

# Go to where this project lives
cd docs/

# Install the stuff. Uses the Gemfile
bundle

# Build the stuff
bundle exec jekyll build

# Or build and serve it and tell it to watch for changes
bundle exec jekyll serve --watch
~~~

## Deploying to `docs.megaminerai.com`

Well well well.

We run this dude in S3 for a couple of reasons:

- We can prevent any boneheaded mistakes where someone deploys secret, in-progress MMAI docs to `docs.megaminerai.com`

That's really about it.

When it really is time to deploy, we use `s3_website` to do it.

~~~ shell
# Here we are in the repo
cd docs/

# Build the thing. If we don't, then s3_website will upload whatever happens 
# to be in _site/. Probably old junk.
bundle exec jekyll build

# BEFORE we wpload it to S3, let's see what it's going to do
bundle exec s3_website push --dry-run

# If we're happy with those changes, we'll push it for real
bundle exec s3_website push
~~~

You have to have the right AWS credentials to do this.
**NOOOOOO** not a username and password. 
Don't do that. 

Really, though, don't do that.

If you need to deploy the site, talk to the web team.
We don't need too many people with that ability, otherwise we'll just end up clobbering each others' work.
S3 and `s3_website` don't have a concept of "diff".
