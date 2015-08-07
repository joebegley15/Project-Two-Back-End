This is the back end of the app. You probably already kne that because of the name, but I figured I would say it anyway.

So, what's going on here?

Great question. What's going on here is I've built a database that records two things. Users and games. The game keeps track of the dice rolls for the user and the computer (the user rolls are made by the computer too, haha silly humans).

Based on the results of the game, the database updates the all time wins and losses of the user. It does so by scanning the games for ones with the same user ID and comparing the score of the computer and the user.
