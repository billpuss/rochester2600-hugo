Rochester2600.com public website
===========

## Setup and Contributions

* Install Hugo
* go to content/post
* Copy previous post as a template to YYYY-DD-MM.md
* Modify new file to include the latest update
* Test with hugo server --verbose
* Commit the changes

## Updating images for presentations
* The presentation thumbnails should be the same size to fit the theme
* The following will change them all to the same size and aspect ratio - be careful
`mogrify -resize 700x550! *.png`

## Updates
* The community page is a hack. Do not rely on it. It should be it's own page. 
* Style.css has been hacked up really hard that it'll be hard to merge. Give up.
* You can update any plugins by pulling from the original theme's /plugins directory (don't merge completely)
* No changes have been made to the .js so that can be updated

## Testing
* staging.rochester2600.com is setup to host the content
* Right now you can just copy the files up to the google cloud storage as so:
```
hugo
gsutil -m rsync -d -r ./public gs://staging.rochester2600.com
```

