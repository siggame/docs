---
layout: docs
tags: General
---

# Game Server

The ACM SIG-Game framework uses a client ↔ server architecture. AIs connect as clients to a game server. This way AIs written in different languages can play with each other, regardless of how their host programming language works. In addition this speeds up development.

ACM SIG-Game provides a game server running on campus for students and competitors to connect to for testing their AIs. The supplied `testRun` script defaults in our server so you don't have to worry about the game server:

```
./testRun MySuperDuperSessionString
```

## Running Your Own Game Server

Although we provide you with a game server running on our own on campus server for testing your AI, we understand there are circumstances where you would want your personal game server; such as being off campus, developing off-line, or just to improve speed.

To do so, just download and run our game server: [Cerveau][1]. The instructions to run it should be available and up to date on GitHub in the `README.md`. Essentially you just need to install [Node.js][2], and then run our server via node.

### Considerations

By running your own game server you are taking on the task on maintaining it. Throughout competitions if bugs are found, then devs push the updates to GitHub. You will be responsible for pulling in changes on your local game server instances.

Additionally, with the game server being open source to everyone, that means you can read exactly *how* our games work in the code. This does **not** mean you can use this power to find ways to cheat. In fact, if you try to cheat you are violating the [rules][3] of our tournaments.

Instead, if you happen to find bugs, or have questions, please tell a dev. Although our games go through testing each semester, bugs can happen, and we'd love you to help us help you!

### Visualizing Games

By default, the game server has no concept of a visualizer. We configure the instance running on our on campus server to give you the visualizer url via the ` --visualizer-url` argument to your clients when the game ends. You can do that too, however, an easier method exists.

Instead visit the game server's web interface (by default on port `3080`), copy the "view" url, and then paste them into our visualizer, Viseur.

If you want to run your own instance of Viseur as well that too is possible. It also lives on Github under the repo name [Viseur][4]. Follow its `README.md` to get it up and running.

[1]: https://github.com/siggame/Cerveau
[2]: https://nodejs.org/
[3]: http://blog.megaminerai.com/MegaMinerAI-Rules/
[4]: https://github.com/siggame/Viseur
