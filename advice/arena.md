---
layout: docs
tags: Arena
---

# Arena

The Arena is where AI's are pitted against one another in a fight to
the death! Thousands of games are played in the cloud during the
course of MegaminerAI and these game results are made available to
users, so that they may further debug their code and refine their
strategy.

## How Your Code is Run

Out of the box, your AI should run in the arena without any
problems. ShellAI comes with a nice `Makefile` that will build your
code and a `run` file to run it. These files are necessary in order to
prepare and run your code in the arena.

The arena will do the following things with your code:

1. Use `git` to check out the version of your AI specified by your
   latest submission on SIG-Game's website. When you create your
   team's repository, your team automatically submits ShellAI by
   default.

2. Run `make` in the root of your repository to build your code. If
   this does not successfully return, your code **will not** run in
   the arena. In most cases, there is no need to ever change the
   contents of your `Makefile`. However, if you are having problems
   building with `make`, please ask a dev for help.

3. Run the `arenaRun` script in the root of your repository to run your
   AI. The arena will run your script expecting the ability to use the
   following arguments:

   `bash arenaRun <game slug> -r <game session id> -s <game server hostname> -p <game server port> -i <player index> -n <team name>`

   Should you decide to change your run file (which is not
   recommended), it **must** accept those arguments in that order to
   run in the arena.

## Debug Arena Code

The arena will create a zip folder containing build output as well as
output from `stderr` and `stdout`. This zip folder is made available to
the AI's team through SIG-Game's main website. `stdout` will be
limited to 5MB. There will also be a directory created in the root of your
client at runtime called `arenaupload`. This directory will be zipped and 
uploaded with your build output. `arenaupload` will be limited to 300MB.
Additionally, game logs (more specifically, the compressed gamelogs or 
`glogs`) are made available to the teams who participated in them. 
Teams can only download arena games in which they participated.

## Arena Statuses

- **Embargoed** - An embargo means that your code is broken and is
  unable to run in the arena. This could be caused by compilation
  errors, segmentation faults, or other AI-code-related problems.
- **Something Broke** - Broken means that the arena is either down or there has
  been a networking issue between the website and the arena.
- **Not Ready** - Not Ready means that the arena is (intentionally)
  not yet running and no games are being played.
- **Thunderbirds Are Go** - Everything is working proplerly and your
  code is ready to run in the arena.

## Dealing with Embargoes

If your code has been embargoed, that means that there is something
wrong with your code that prevents it from running in the arena.  In
order to fix this, you need to debug your code using the output found
in the zip folder mentioned above.  Then, after your code has been
fixed, it needs to be resubmitted to the arena. Be sure to check the
build output as well as `stdout` and `stderr`.

## Scoreboard

A scoreboard with everyone's rankings in the arena is available at http://arena.siggame.io:52184/mies/thunderdome/mmai_scoreboard.  It displays live scoring based off of games played in the arena.

## Tournaments

All SIG-Game tournaments are run using the same system as the
arena. Therefore, if a competitor's code does not work in the arena,
then it will not work in a tournament. Teams need to make sure that
their code is able to run in the arena in order for games to be played
and results to be collected.

## Software Versions

Below is a list of supported software versions for MegaminerAI. If you
have questions about other software, please contact a dev to have this
list updated.

Please take a look at our [always-up-to-date document](https://docs.google.com/document/d/1oeZ6MdfU-gmPzRJvZwkB8VzqWtlzHIViHDolDCei_KU/pub) on versions used in the arena!

## Computational Limitations

- **RAM** - Usage is limited to 2GB.  If you use more, it may cause lag, server crashes, and/or cause unfairness in other games running 
  on the same machine.
- **CPU** - Thread usage is limited to 2 max.  If you use more, it may cause unfairness in other games running on the same machine.
- **Disk** - While there is no hard limit on disk usage, keep in mind that if your git repository is very large the arena may have 
  trouble with your games.
