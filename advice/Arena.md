##Arena
The Arena is where AI's are pitted against one another in a fight to the death! Thousands of games are played in the cloud during the course of MegaminerAI and these game results are made available to users, so that they may further debug their code and refine their strategy.

##Tournaments
The tournament is ran using the arena. Therefore, if a competitor's code does not work in the arena, then it will not work in the tournament. Teams need to make sure that their code is able to run in the arena in order for games to be played and results to be collected.

##Debug Arena Code
The arena will create a zip folder containing output from stderr, stdout, and build output. 
This zip folder is made available to all competitors through the megaminerar.com site.

##Arena Statuses
-Embargo - An embargo means that your code is broken and is unable to run in the arena.
-Broken - Broken means that the arena is either down or there has been a networking issue between the competitor's code and the arena.
-Not Ready - Not Ready means that the arena is not yet running and no games are being played.
-Thunderbirds Are Go - Everything is working proplerly and your code is ready to run in the arena.

##Dealing with Embargoes
If your code has been embargoed, that means that there is something wrong with your code that prevents it from running in the arena.
In order to fix this, you need to debug your code using the output found in the zip folder mentioned above.
Then, after your code has been fixed, it needs to be resubmitted to the arena.

##Software Versions
Below is a list of supported software versions for MegaminerAI
-g++ 4.6.3
-javac 1.7.0_75
-java 1.7.0_75 (IcedTea 2.5.4)
-mono 3.12.1
-python 2.7.3 
