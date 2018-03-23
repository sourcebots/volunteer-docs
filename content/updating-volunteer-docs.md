---
title: How to update the volunteer docs
---

We have a documentation site on how to volunteer (you're currently on it). Everyone can edit or add to this documentation (even competitors) This page gives you some tips on how to do so.

# Editing a page in GitHub

Lets say you've spotted some bad grammar on this page, and you want to edit the page to fix it.

These pages are stored in GitHub on the [volunteer-docs repository][volunteer-docs]. This is where you should go to make your changes.

- All content is available in the [content folder][content-dir].
- All images/extra files are in the [static folder][static].

All pages are stored as [markdown][markdown-ref] files (ones ending in `.md`). Once you've found the file for the page you want to edit  (`updating-volunteer-docs.md` in this case), simply open the file, then click on the little pencil in the top-right corner to start editing.

Once you've made your edit, scroll to the bottom and write what you changed in the 'Commit changes' box. Then pick a branch name, this should just be a summary of your changes in a shortened form. Once you've done this, then click 'Commit Changes' button. This will take you to the 'Open a pull request' page, (see the 'Creating a Pull Request' section below).

# Creating a Pull Request

Once you've clicked the 'Commit Changes' button in GitHub, or if you've just pushed a change manually, you can open a pull request.

A Pull Request is a request for changes to be 'pulled' into the main version of the website (aka the master version).

The text should automatically be filled out for you, so as long as it makes sense, click the 'Create pull request' button. This will request for people to take a look at your changes and review it.

## Pull Request checks

There are also a few checks which run when you create a pull request, these show up at the bottom of the page a minute or to after you've made a pull request. click 'Show All checks' to see all of them. These checks include:

- Checking Spelling and links (CircleCI checks)
- A sample version of the website is generated (Netlify checks)

If the CircleCI check fails, click on the 'Details' link to see what is broke (ask for help in the comments on if you don't know what is broken or how to fix it. Errors tend to be a bit cryptic)

It's a good idea to check what your website looks like by clicking on the 'Details' of the Netlify check. It should take you to a specially generated version of the site with your changes. You can then look for any obvious errors.

## Review process

Once you submit a Pull Request, it is then sent for review by us. We will then comment on your changes, or if it seems fine we will approve it. Once it has been approved you can then click on the big green 'Merge pull request' button which will update the main website with your changes!


[volunteer-docs]: https://github.com/sourcebots/volunteer-docs/
[content-dir]: https://github.com/sourcebots/volunteer-docs/tree/master/content
[static]: https://github.com/sourcebots/volunteer-docs/tree/master/content
[markdown-ref]: http://commonmark.org/
