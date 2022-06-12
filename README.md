# space invaders

## time out (tim mei)

**Objective**   
For my project, I wanted to recreate space invaders. The main objective of Space Invaders is to destroy as many waves of aliens as possible to achieve the highest possible score. Alternatively, if the player loses all their lives or lets the aliens invade the planet, the game ends.  In my version, the game will be played on a 1600x900 window. The player’s goal is to kill all the aliens on the screen before they invade the planet (indicator line). As the aliens are killed off, more will spawn after a majority on screen die. As the game progresses, the aliens will speed up in the horizontal direction, moving faster and faster. As the aliens hit a set border on each side of the screen, they will drop down, getting closer to the planet.

**Instructions**   
Use the left and right arrow keys to pilot the cannon. Press 'spacebar' to shoot pellets at the aliens.  
q - decreases the number of lives by 1  
w - shifts the alien array down   
e - removes all the aliens   
r - adds 250 points to the counter(s)

[Prototype Document](https://docs.google.com/document/d/11_JpabYqUISPBUm-nMWko9OeEPJgHzp7g-6x7ChPbeA/edit?usp=sharing)

*Log*

5/24 - creating the skeleton for the cannon file

5/25 - updated cannon's display method; tested the cannon in setup

5/26 - modified setup in the main file and wrote part of the skeleton for alien

5/27 - experimented with alien movement and cannon movement

5/30 - *(lots of work)* got cannon movement functioning, alien movement functioning, alien shooting functioning, and cannon shooting functioning

5/31 - started the process of player death

6/2  - bullet hitboxes work; properly despawn when hitting an alien or the player

6/3  - tweaked the formula for the hitbox; player properly dies and respawns; put a limiter on the firing rate of the player

6/5  - got alien hitboxes working, the points system, and started working on a new move method for the aliens

6/9  - got alien shifting to work, created a resetting system for the game, created a 'game over' screen, cleaned up 
some unneccessary code

6/10 - created the secondary ending condition (landing on the planet), added cheats to help test the game

6/11 - update UML diagram and github image; updated the prototype document 

6/12 - updated github, formatted prototype document; put the speedModifier on the game so that the aliens can speed up

