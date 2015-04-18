---
layout: docs
tags: General
---

# General Advice

## Git Help

If you need help with `git`, please ask your neighbor or ask a dev!

Assuming you're working in Python, your basic workflow should look
like this:

    # Stage your AI changes to be committed
    git add AI.py

    # Stage any new files you wrote
    git add MyGreatStragegy.py
    git add MyNewDataStructures.py

    # Commit your changes
    git commit -m "Update strategy to super good strategy"

    # Push your changes to SIG-Game's website
    git push
    # ... type in password

    # View your commits on SIG-Game's website and pick which versions
    # you want to submit to the arena

If your teammates push up code, you will need to get their changes by
running `git pull`. `git` is smart, and it can usually figure out how
to merge your code together. Sometimes you may need to perform a
manual merge. Ask a dev if you have any trouble.

## Submission advice

SIG-Game **highly** recommends that competitors push their code to the
website frequently. This helps teams to back their code up, keep track
of AI versions, and collaborate with teammates.

> Push early, push often.

SIG-Game also **highly** recommends that competitors submit their AIs
to the arena early and often for the following reasons:

* You can verify that your code works in the arena. AIs that
  immediately crash or fail to compile will be eliminated early from
  any tournaments!
* You have backups! If you submit an AI to the arena which doesn't
  work, you can re-submit an old version that *does* work. This can be
  very useful if you do not have enough time to fix your AI.

> Submit early, submit often.

## IDE Warning

Many competitors chose to use integrated development environments
(IDEs) to develop their AIs. However, these tools can sometimes change
the structure of AI repositories in a way that **breaks** the build
process required by the arena.

If you or your team chooses to use an IDE, be *very* sure that your
code still builds with `make` and runs with `run`. Consult the
[Arena Doc Page](/advice/general/) for more details about how your
code runs in the arena.

> Just because it runs in Visual Studio doesn't mean it's going to run
> in the arena.

## Function Not Implemented

**Note**: This error is not a super frequent one. However, it *does*
  happen on occasion, and this is how to handle it.

This error is related to shared drives (`s:/`) and making changes to
shared files from separate machines

The only solution that we are aware of is to create a new folder (with
a different name) outside of your current repository and re-clone your
repository from the SIG-Game website.

For example, let's assume that your code is in `~/code/myteam/`, and
you've gotten a `function not implemented`.

    # Change to your repository's parent directory
    cd ~/code/

    # Reclone your code with a different name by changing the last
    # argument in your provided clone command
    git clone ... myteam-new.git

    # Copy/paste any new changes to source files that you can recover from
    # the old copy of your repo (myteam/) into the new copy (myteam-new/)

    # Remove the broken copy
    rm -rf myteam/

    # Proceed to work in myteam-new/

Be sure to commit your code and push your changes to the website
periodically. This will help to reduce the work you may lose to a
`function not implemented` error.
