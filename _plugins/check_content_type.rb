require 'find'

# A helper plugin for removing extra cruft in the <html>
# tag. Apparently, that extra junk confuses s3_website, which causes
# it to set the wrong Content-Type header for those files in S3.

# Long story short, this plugin preverts your browser from trying to
# load up HTML files (from Sphinx, JavaDoc, etc) as plain ol' XML.

# Subscribe to the hook that gets triggered after all files have been
# written to their intended destination.
Jekyll::Hooks.register :site, :post_write do |site|

  # Look through the written files (the site's destination (_site/))
  # and figure out which ones end in ".html"
  Find.find(site.dest) do |path|
    # If it's a file whose name ends in ".html"
    if FileTest.file?(path) and File.fnmatch('*.html', path)

      # Read the file in
      text = File.read(path)

      # Replace its <html.*> tag with /just/ <html>
      new_contents = text.gsub(/<html.*?>/, "<html>")

      # Write it back
      File.open(path, "w") {|file| file.puts new_contents }
    end
  end
end
