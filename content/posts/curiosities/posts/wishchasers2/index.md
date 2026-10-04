---
title: "Wishchasers (Boardgame) - second Prototype"
description: "In here I describe the design process of the Wishchasers prototype second big iteration and its rules."
tags:
  - Boardgames
date: "2026-10-05"
publishDate: "2026-10-04"
series:
  - Wishchasers
prerequisites:
 - "../wishchasers/index.md"
Summary: "In here I describe the design process of the Wishchasers prototype second big iteration and its rules."
audio: []
videos: []
images: []
---

## Feedback from the first prototype

After playtesting the first prototype a couple of times, I got some very useful feedback:

- The movement is difficult/boring, Possible fixes:
    - Reduce size of the board
    - Add movement modifications in tiles
    - Add movement to traps to make the tradeoff more interesting
- The victory condition is not particularly interesting,
- There is not enough enemy variety, add bosses?
- It is way too difficult to die, add healing rooms in exchange for points maybe?
- Objects can be too op, add object removal
- Maybe buff object selling?
- More player interaction objects?
- More Nightmare interaction objects?
- Tramps are not interesting, add variety?
- Add identity and flavour.

# Rulebook of the second prototype

Whishchasers is a great game, the objective of the game is to win, how do you win? By submitting 2 wish crystals into the well. We will go into more detail in this guide.

## Components 
The game needs the following components:
- A deck of object cards
- A deck of Boss object cards
- 20 1 point tokens
- 20 5 point tokens
- 45 life tokens
- 20 1 coin tokens
- 20 5 coin tokens
- 5 boss cards
- 45 Nightmare cards (15/20/10 small/medium/large)
- 10 empty tiles
- 6 starting tiles (one for each player)
- 2 fountain tiles
- 2 treasure tiles
- 2 armory tiles
- 1 well tile
- 12 trap tiles
- A deck of trap tokens (one for every object with no use limit)
- 3 d6 dices (for randomness)
- 6 player pieces
- 24 pocket tokens (6 for each player)
- 16 number tokens (enumerated from 3 to 18)
- 5 portal tokens
- 5 belt tokens
- 5 spatial instability token
- 5 trap token
- 5 one use trap token
- 5 no-aggression token
- 1 drone token
- 1 beacon token

## Notation
In this rulebook, we will use the following notation, don't worry if you don't understand all the terms now, this section is intended as a glossary of terms for the rest of the rulebook:

- **Random tile**: When the rules speak of a random tile, it means that you need to throw 3 d6's and the tile corresponding to that number will be the one chosen.
- **Range**: When the rules speak of range, it means the number of tiles you would need to move to get from one tile to another, for example, if you are in a tile and there is an empty tile adjacent to it, that tile is in range 1, if there is another empty tile adjacent to that second tile, that second tile is in range 2 from the first tile and so on. When the rules speak of "range 0" it means the current tile.
- **Teleportation**: Movement that ignores all the tiles in between and doesn't produce any effect from those tiles, the tile the teleportee is currently on and the tile they are teleporting to.
- **Enemy**: This can refer to anything able to receive damage, such as Nightmares, bosses, other players or tokens with life points.

## Setup

### Board generation

The board is generating by joining the tiles such that there are:
- 10 empty tiles
- 2 fountain tiles
- 2 treasure tiles
- 2 armory tiles
- 1 well tile
- Any number of trap tiles
- As many starting tiles as players

Here are some examples of game boards, for 4 players:

![Board example 1]({{< fullimg "images/mymap.webp" >}})

![Board example 2]({{< fullimg "images/mymap2.webp" >}})

![Board example 3]({{< fullimg "images/mymap3.webp" >}})

And for 6:

![Board example 4]({{< fullimg "images/mymap6-1.webp" >}})

![Board example 5]({{< fullimg "images/mymap6-2.webp" >}})

In this boards the green tiles are starting tiles, the orange tiles are fountains, treasures or armories, the brown tiles are traps, the light gray tiles are empty tiles and the dark grey tile is the well.

After setting up a disposition a different number from the number tokens must be assigned to every empty tile, fountain, treasure and armory. Then, a single trap token must be assigned to every trap tile which will indicate the object used to save it.

Finally, two monsters will spawn in random tiles of the map.


### Players

Each player starts with 1 coin, 10 lives and 6 free pockets. 

### Shop

Put three cards from the objects deck face up next to the board, this will be the shop.

### Stocking

From the Nightmare deck, put a single Nightmare in 2 random tiles. From the objects deck, put a single object in each armoury tile, put two coins in each treasure tile and put a 5 point card in each fountain tile.

## Game Round Structure

Each round follows these steps:

### 1. Player Turns

Players take turns in clockwise order, during their turn they can perform 1 or 2 actions, or pass. To perform an action a player must use a pocket. The possible actions are the following:

- **Move:**
  
  Move up to **2 spaces**.

- **Attack**

  Deal 2 damage to an enemy in range 0 (the same tile)

- **Search**
  
  Make one room-specific action in the tile you are in, this action can be one of the following:

  - Treasure rooms: Collect the coins in the tile.
  - Armories: Collect one object in the tile.
  - Fountains: Paying 1 coin, collect 5 points in the tile.
  - Trash: Pay 1 coin, put an object you own into the discard pile.
  - Rooms with points/object: Collect the points or object in the tile.

- **Buy**

  Purchase items from the **shop** by spending the necessary coins or by paying N coins they might buy N points.

- **Use an object**

  Activate the ability of an object you own by using the pocket containing the object.

When a player passes their turn without making any actions, they can not perform any more actions for the remainder of the round.

This step ends when all players have either passed or used all their pockets.

### 2. Refill Locations

- **Treasure tiles** receive 2 coins if they are empty.
- **Fountains** receive 1 point card if they are empty.
- **Armories** receive 1 object (face-down) if they are empty.

### 3. Random Enemy Spawn
Put a number of enemies equal to the current round number +2 in the board. For each enemy decide a random tile and put it there, if there are more than 3 enemies in a tile after putting the new enemy there, select another tile at random.

### 4. Random Item Spawn
One random object appears in a random room face down.

### 5. Shop Restock
If no item has been bought in the last turn, remove the oldest item from the shop, then the shop is replenished with new face up objects until there are 3 cards remaining.

### 6. Recovery
Each player heals 1 health for each unused pocket this round and recovers all their pockets.

## Combat

When a player performs an attack action, they deal damage to a single enemy (nightmare or other player) of their choosing withing range. If there are Nightmares in the tile the rules for Traps and Nightmares apply.

## Objects

An object card looks like this:

![Object card]({{< fullimg "images/objects-a-signed.webp" >}})

Where
- The top right text indicates if the object is active (you need to use an action to activate it) or passive (the object is always active and doesn't require an action).
- When the object is active it can have an icon, the top right icon indicates the type of action using the object counts as, most of the time is blank. The types, when they are not blank, can be "Attack" (two swords) or "Movement" (a boot).
"Attack" and "Movement" mean that when you use the object, the action you are using counts as that type of action, this is relevant because if an object makes all attack actions have more range then this objects also get more range. 
- The cost (top left) is the amount of coins you need to pay to buy the object in the shop.
- Sometimes, below the card, the number of times it can be used before being discarded can be found. If there is nothing there the card is never discarded with use.

### Obtaining objects

Objects can be obtained in three ways:
- Buying them in the shop by paying their cost in coins.
- Finding them by searching in armory tiles.
- Finding them by searching in rooms where a random item has spawned.
- When an object has "single use" in its description, it can only be used once, after using it, the object is discarded and the pocket that contained it is free again.

When obtaining an object the player does not need to reveal it until they decide to use it, but they need to put it in a (not necessarily unused) empty pocket if they already have 2 objects without assigned pockets. If not they can decide if they want to put them into a pocket or not, until an object is revealed it can be moved between unused pockets and free spaces freely.

### Using objects

When a player wants to use the effect of an object they need to have it revealed, they can reveal an object at any time freely. If the object is active, for the player to use it they need to have it in a pocket which they will use to activate the object, if the object is passive, the player can use its effect without needing to use an action, but they need to have it revealed.

### List

This are the objects used in the second prototype:

| Name | A/P | Type | Cost | Description |
|---|---|---|---|---|
| AloField | A | - | 6 | Avoid all damage until the end of your turn. |
| AP Portal | A | - | 6 | Move a character to another tile. |
| Blink | P | - | 7 | At end of your turn you may disappear. Reappear one move action away at round's end. |
| Bomb | A | Attack | 5 | Deal 5 damage to everyone in the room. |
| Broken Extending Hand | A | Attack | 5 | When you hit someone destroy one of their items instead of dealing damage. |
| Cavalry Lance | P | - | 7 | When moving and passing trough a tile (not starting or ending there) you may perform a 2 damage attack. |
| Collector's Eye | P | - | 6 | Choose between an armory item and the top shop item when searching. |
| Concrete Mixer | A | Attack | 5 | Remove an obstacle. |
| Constitution Belt | P | - | 6 | Whenever you gain health gain double health. |
| Crane | A | - | 6 | Swap the positions of two rooms with everything they contain. |
| Deja Vu Machine | A | - | 7 | Recover 1 pocket, you may activate an additional pocket this turn. |
| Dream Extractor | P | - | 6 | Gain 1 extra point per nightmare killed. |
| Echo Chamber | A | - | 6 | The next action you take can be performed twice. |
| Ectoplasm | P | - | 6 | Increase movement by 5 but reduce damage by 2. |
| Emergency Time Jump | A | Movement | 5 | Teleport to any room. |
| Ensnaring Strike | A | Attack | 6 | Make an attack and prevent the attacked player from leaving their tile until the end of their next turn. |
| Explorer's Manual | P | - | 7 | When searching, search twice. |
| Extending Hand | A | Attack | 7 | When you hit someone steal a random item instead of dealing damage. |
| Fear Toxin | A | Attack | 6 | Spawn a Nightmare. |
| Forgotten Dream | A | - | 6 | Take a random item from the discarded item deck. |
| Grappling Hook | A | Movement | 6 | Move in one direction until you cannot move further. |
| Health Potion | A | - | 5 | Recover half of your health. |
| High-Bourgeois Monocle | P | - | 7 | If you were to gain coins, gain double those coins. |
| Horror Movie | A | - | 5 | Move up to two Nightmares from one tile to another. |
| Invisibility Potion | A | - | 6 | Avoid all damage until your next turn. |
| Lich Heart | P | - | 7 | Create a beacon in your current position if none exists. If you die return to it with full health and discard this item. |
| Lucky Coin | P | - | 6 | Gain 1 extra coin per nightmare killed. |
| Magnifying Glass | P | - | 6 | Increase your search range by 1. |
| Mechanical Tape | A | - | 5 | Place a belt in the current tile. |
| Non-Aggression Treaty | A | - | 5 | Place a non-aggression field on a tile. |
| Normal Pocket | P | - | 7 | Allows you to store more objects but grants no extra actions. |
| Parasite | P | - | 0 | Does nothing. |
| Portal Chalk | A | - | 6 | Place a portal in the current room. |
| Radioactive Stone | P | - | 7 | When you receive damage you may move. |
| Remote-Controlled Robot | P | - | 6 | You can spend an action to create a robot if there is none in play. You may always act as if you were in its position. |
| Repair Kit | P | - | 7 | Whenever you discard an object you may pay 3 coins to recover it. |
| Salad | P | - | 6 | Increase your maximum health by 3. |
| Scythe | P | - | 7 | When you attack recover 1 health. |
| Shovel | A | - | 6 | Place a trap that does not affect you in a tile. |
| Small Blades | P | - | 6 | Instead of a normal attack you may perform two attacks dealing 2 damage each. |
| Snout | P | - | 6 | When you search you may move. |
| Speed Potion | A | - | 6 | During this round each action you take can be performed twice. |
| Spiky Jacket | P | - | 6 | When an enemy attacks you that enemy takes 2 damage. |
| Spring Blade | A | Attack | 6 | Perform as many 2 damage attacks as the number of attacks you made this round. |
| Spring Shoes | P | - | 7 | After performing an attack you may move. |
| Swiss Army Knife | P | - | 7 | Can be used as any object for obstacles. |
| Teleport Beacon | A | Movement | 7 | Create a beacon in your current position if none exists, otherwise teleport to it. |
| Teleportation Belt | P | - | 7 | Each time you attack you may teleport to a random room. |
| Thick Handle | P | - | 7 | Increase your attack range by 1. |
| Trap Arsenal | A | Attack | 7 | Place a trap that does not affect you. Remove it when triggered. |
| Unreliable Armor | P | - | 6 | When taking damage roll 1d6, on a 6 avoid the damage. |
| Unstable Space | A | - | 5 | Place a spatial instability in a tile. |
| Vampire Teeth | P | - | 6 | When you gain health you may move. |
| Very Big Coin | A | - | 5 | Gain 5 coins. |
| Very Guided Missile | A | - | 6 | Pay 2 coins to destroy another player's item. |
| Very Large Mace | P | - | 6 | Increase damage by 2 and reduce movement by 1. |
| Vitality Potion | A | - | 6 | Recover 2 pockets and use them this turn. |
| Winged Boots | P | - | 6 | Increase the number of tiles you can move by 2. |
| Self-Replicating Armor | P | - | 7 | When you receive damage, instead receive that damage-1 |
| Trap Blueprint | A | - | 6 | Copy any tile modification in game and put it into any other tile |

5 of this objects can only be obtained by defeating bosses, these objects are: Spring shoes, Self-Replicating Armor, Normal Pocket, Deja Vu Machine and Cavalry Lance.

## Traps and Nightmares

Trap tiles and tiles with Nightmares are tiles where the player receive damage when they use a pocket in that tile.

When a player is in a tile with Nightmares  or a trap, and they use a pocket, they receive damage before the action resolves, but if they were to die they would die after they had finished their action. In Summary

- 1. Player uses a pocket in a tile with Nightmares or a trap.
- 2. Player receives damage from the Nightmares or the trap in that tile.
- 3. Player performs the action they wanted to perform with the pocket.
- 4. The player checks if they are dead and they act accordingly.

### Nightmares

A Nightmare card looks as follows:

![Nightmare card]({{< fullimg "images/nightmare.webp" >}})

Where:
- The top left icon indicates the amount of damage the Nightmare does.
- The top right icon indicates the health points of the Nightmare.
- The bottom right icon indicates the amount of points the player gets for killing the Nightmare.
- The bottom left icon indicates the amount of coins the player gets for killing the Nightmare.

Nightmares completely heal themselves at the end of the round.

When using a pocket in a tile with Nightmares, each Nightmare deals its damage to the player, but the player can choose the order in which they receive the damage.

When defeating a Nightmare, the player receives the points and coins that Nightmare gives and the Nightmare is removed from the tile.

### Bosses

A boss card looks as follows:

![Boss card]({{< fullimg "images/boss.webp" >}})

Where:
- The top left icon indicates the amount of damage the boss does.
- The top right icon indicates the health points of the boss.
- The bottom right icon indicates the amount of points the player gets for killing the boss (24 points).
- The bottom left icon indicates the amount of coins the player gets for killing the boss (12 points)
- The type in the top identifies the type of boss.
- The text at the center indicates the boss's special ability.
- The text behind the name indicates the object they give to the player who kills them.

Bosses function similarly to Nightmares, but they are more dangerous and may have a special ability.

When a boss is defeated, the points and coins they give are evenly distributed among the players who attacked them this round. Additionally, the player who dealt the killing blow automatically obtains the object that boss gives.

This are the bosses and nightmares used in the second prototype:

| # | Name | Attack | Life | Effect | Item | Points | Coins | Appearances |
|---|------|--------|------|--------|------|--------|-------|-------------|
| 1 | Basophobia | 3 | 10 | Whenever this nightmare receives damage, it moves to a random adjacent tile. | Spring shoes | 24 | 12 | 1 |
| 2 | Enochlophobia | 1 | 1 | At the end of each turn, this nightmare creates a copy of itself in each adjacent empty room. | Self-Replicating Armor | 12 | 12 | 1 |
| 3 | Catoptrophobia | 2 | 12 | Whenever this nightmare receives damage, create a copy of itself without this ability in the current tile. | Normal Pocket | 24 | 12 | 1 |
| 4 | Peniaphobia | 3 | 10 | When you receive an attack from this nightmare, one of your unused pockets is used up at random. | Deja Vu Machine | 24 | 12 | 1 |
| 5 | Topophobia | 3 | 10 | When this nightmare deals damage to a player, that player is teleported to a random Room. | Cavalry Lance | 24 | 12 | 1 |
| 6 | Microphobia | 1 | 1 | | | 2 | 0 | 15 |
| 7 | Phobia | 3 | 3 | | | 3 | 1 | 20 |
| 8 | Macrophobia | 3 | 5 | | | 5 | 2 | 10 |

### Traps

Traps are tiles that, if the player doesn't have the required object to avoid that trap, deal damage when the player uses a pocket inside them or when they move through them. Each trap has a specific object that, if a player has it, they can move through and act in the trap without taking damage.

### Other modifications in tiles

Some objects can add a modification to a tile, this modifications are signified by a token placed in the tile.The possible modifications are the following:

 - Portal: Whenever a player enters a tile with a portal they can decide to appear in any other tile with a portal
 - Belt: Moving out of the room in the direction specified in the belt always costs 1 less movement, going out in any other direction always costs 1 more movement.
 - Spatial inestability: Whenever a player enters or passes through this room, they are teleported to a random tile.
 - Trap: Whenever a player uses a pocket in this room or moves through it they receive 3 damage.
 - No agression field: No damage can be done or be recieved in the affected tile.

## Death and stealing points

When a player's life points reach 0, they die. That is, the player returns to their starting tile and they leave in the tile where they died 5 points. If a player does not have 5 points, they will leave all their points in the tile. Other players can then pick those points up by performing a search action in that tile.

## Other tiles

### Starting tiles

Starting tiles are the tiles where players begin the game and where they return after dying. Each player has a specific starting tile.

### Fountains

When searching in a fountain, if it still has 5 points in it a player may pay 1 coin to obtain those points.

### Armories

Armouries are tiles that can contain an object, when a player searches in a non-empty armory they can obtain the object in that armory.

### Treasure tiles

Treasure tiles are tiles that can contain coins, when a player searches in a non-empty treasure tile they can obtain the coins in that tile.

### Well

The Well is a tile where players can submit points to obtain a wish crystal. When a player searches in the Well, if they have at least 15 points, they can pay 15 points to obtain a wish crystal.

In wells players can also discard objects, when a player searches in a Well tile they can discard an object they own to gain 3 coins.

## Ending the game

The game can end in three ways:
- If a player obtains 3 wish crystals, that player wins the game.
- If all the numbered tiles have a Nightmare in them, the game ends and no player wins.
- When the Nightmare deck is emptied at the end of the round the game ends. Then the player with most points wins the game (in that calculation, wish crystals count as 15 points).