---
title: "Wishchasers (Boardgame) - Second Prototype"
description: "In here I describe the design process of the Wishchasers prototype second big iteration and its rules."
tags:
  - Boardgames
date: "2026-11-13"
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
- There is not enough nightmare variety, add bosses?
- It is way too difficult to die, add healing rooms in exchange for points maybe?
- Objects can be too op, add object removal
- Maybe buff object selling?
- More player interaction objects?
- More Nightmare interaction objects?
- Tramps are not interesting, add variety?
- Add identity and flavour.

# Rulebook of the second prototype


Arm yourself and run around the map hunting nightmares, Obtain objects and edit the map to be the fastest player to get your wish granted. But be careful, greed can make you slow...

Wishchasers is a great game whose objective is to win by being the first player to obtain **3 wish crystals**. Crystals are taken from the well by paying points. Beware of the Nightmares that fill the board more and more each round.

## Components

The game needs the following components:

- [Object cards:]({{< fullimg "documents/objects.pdf" >}})
  - A deck of object cards
  - A deck of Boss object cards (5 cards)
- 20 1-point tokens
- 20 5-point tokens
- 60 life tokens
- 20 1-coin tokens
- 20 5-coin tokens
- 18 Wish crystals
- [A nightmares deck with 59 cards:]({{< fullimg "documents/nightmares.pdf" >}})
  - 5 boss cards
  - 54 Nightmare cards (18 small / 23 medium / 13 large)
- [Tiles (the document has some redundancy):]({{< fullimg "documents/tiles.pdf" >}})
  - 10 empty tiles
  - 6 starting tiles (one for each player)
  - 2 fountain tiles
  - 2 treasure tiles
  - 2 armory tiles
  - 1 well tile
  - 12 trap tiles
- [Tokens, in order:]({{< fullimg "documents/tokens.pdf" >}})
  - A deck of object tokens (one for every non-boss object with no use limit)
  - 5 portal tokens
  - 5 one-use trap tokens
  - 1 drone tokens
  - 5 belt tokens
  - 5 spatial instability tokens
  - 3 trap tokens
  - 3 no-aggression tokens
  - 1 beacon token
  - 17 number tokens (numbered from 2 to 18)
- 1d8 and 1d10 (for randomness)
- 6 player pieces
- Pockets (6 for each player)

## Notation

This section is a glossary of terms used in the rest of the rulebook. Don't worry if you don't understand everything on a first read.

- **Tile**: Every hexagonal piece of the board. A tile has 6 neighbours (adjacent tiles). The word "room" is not used in this rulebook, only "tile".
- **Numbered tile**: Any empty tile, fountain, treasure, armory or the well. Each of them has a number token from 2 to 18 (see Setup). Starting tiles and trap tiles have no number.
- **Random tile**: Roll 1d8 and 1d10 and add them together. The numbered tile with that number is the chosen one. Only numbered tiles can be chosen randomly, so starting tiles and trap tiles never are. The result is not uniform: middle numbers (9, 10, 11) are much more common than the extremes (2 and 18).
- **Range**: The number of tiles you would need to move to get from one tile to another. If a tile is adjacent to yours, it is in range 1; a tile adjacent to that one is in range 2, and so on. "Range 0" means the current tile.
- **Teleportation**: Movement from the origin to the destination without passing through any intermediate tile. The effects of the **destination** tile apply (for example, a trap or a spatial instability), but the effects of the **origin** tile do not (for example, a trap or a nightmare).
- **Disappearance**: A character who has disappeared can not be affected by any effect nor use any pockets.
- **Enemy**: Anything able to receive damage, such as Nightmares, bosses, other players, or tokens with life points.
- **Health**: Each player has maximum health of 10, unless an object changes that. Health can never go above the maximum.
- **Points**: Collected with 1-point and 5-point tokens. Wish crystals are not points, except when counting the final score.
- **Pocket**: Each player has 6 pockets. A pocket is both an action you can spend and a slot that can hold one object (see Objects).

## Setup

### Board generation

Join the tiles to build the board such that there are:

- 10 empty tiles
- 2 fountain tiles
- 2 treasure tiles
- 2 armory tiles
- 1 well tile
- Any number of trap tiles
- As many starting tiles as players

The only restriction is that every tile must be reachable from any other tile. Any layout that satisfies this is valid.

Here are some examples of game boards, for 4 players:

![Board example 1]({{< fullimg "images/mymap.webp" >}})

![Board example 2]({{< fullimg "images/mymap2.webp" >}})

![Board example 3]({{< fullimg "images/mymap3.webp" >}})

And for 6:

![Board example 4]({{< fullimg "images/mymap6-1.webp" >}})

![Board example 5]({{< fullimg "images/mymap6-2.webp" >}})

In these boards the green tiles are starting tiles, the orange tiles are fountains, treasures or armories, the brown tiles are traps, the light grey tiles are empty tiles and the dark grey tile is the well.

Once the board is built:

1. Randomly distribute the 17 number tokens (2 to 18) over the 17 numbered tiles (every empty tile, fountain, treasure, armory and the well), one number per tile and no number repeated.
2. Assign one object token to every trap tile. A player with that object is not affected by that trap.

### Players

Each player starts with 1 coin, 10 health and 6 pockets (all empty). Each player starts on their own starting tile. Choose the first player at random; play continues clockwise.

### Shop

Put three cards from the object deck face up next to the board. This is the shop.

### Stocking

- From the Nightmare deck, draw 2 Nightmares and put each one on a random tile (the same tile can be chosen twice).
- From the object deck, put a single object in each armory tile.
- Put 2 coins in each treasure tile.
- Put a 5-point token in each fountain tile.
- Put 2 wish crystals in the well.

## Game Round Structure

Each round follows these steps:

### 1. Player Turns

Players take turns in clockwise order. During a turn a player can perform **1 or 2 actions**, or pass. The turn order repeats until every player has either passed or has no pockets left to use.

To perform an action a player must **use a pocket**. The possible actions are:

- **Move**: Move up to **2 tiles**.
- **Attack**: Deal 3 damage to an enemy in range 0 (the same tile).
- **Search**: Search the tile you are in (always range 0 unless an object says otherwise). You can collect all the points, all the coins, or one object currently in the tile. There are also two tile-specific searches:
  - **Fountain**: Pay 1 coin to collect the 5 points of the fountain. These 5 points are never mixed with points from other sources (for example, points dropped by a dead player) and must be taken separately.
  - **Well**: Choose one of the following:
    - Pay 15 points to take a wish crystal from the well.
    - Discard an object you own to gain 3 coins.
- **Buy**: Purchase one object from the **shop** by paying its cost in coins, or pay 4 coins to gain 5 points.
- **Use an object**: Activate the ability of an active object you own by using the pocket that holds it.

When a player passes without making any more actions, or declares that they are finished for the round, they cannot perform any more actions until the end of the round.

This step ends when all players have either passed or used all their pockets.

### 2. Refill Locations

- **Treasure tiles** receive 2 coins if they are empty.
- **Fountains** receive a 5-point token if they are empty.
- **Armories** receive 1 object (face down) if they are empty.
- **Well** receives wish crystals until it has 2.

### 3. Random Nightmare Spawn

Put a number of Nightmares equal to the current round number + 2 on the board. For each Nightmare:

1. Choose a random tile.
2. If the chosen tile already has 3 or more Nightmares, the last player in round order must instead choose a numbered tile with 0 Nightmares.
3. Draw a Nightmare from the Nightmare deck and put it on the chosen tile.

Bosses are shuffled into the Nightmare deck, so any draw can be a boss. Starting tiles never receive Nightmares through this step because they are never chosen randomly.

If at any moment every numbered tile has at least one Nightmare, the game ends (see Ending the game).

### 4. Random Item Spawn

One random object from the object deck appears face down in a random tile. Any numbered tile can receive it.

### 5. Shop Restock

If no object was bought this round, remove the oldest object from the shop. Then add new face-up objects until the shop has 3 objects.

### 6. Recovery

Each player heals 1 health for each unused pocket this round (a pocket holding a passive object counts as unused) and then recovers all their pockets.

## Combat

When a player performs an attack action, they deal damage to a single enemy (Nightmare, boss, other player or breakable token) of their choosing within range. If there are Nightmares or traps in the tile where the pocket is used, the rules for Traps and Nightmares apply.

## Objects

An object card looks like this:

![Object card]({{< fullimg "images/objects-a-signed.webp" >}})

Where:

- The top right text indicates if the object is **active** (you need to use a pocket to activate it) or **passive** (it is always active and doesn't require an action).
- When the object is active it can have an icon that indicates the type of action using the object counts as. Most of the time it is blank. The types, when not blank, are "Attack" (two swords) or "Movement" (a boot). This means that when you use the object, it counts as that type of action and as such has the corresponding range, which is relevant for objects that modify all attacks or all movements (for example, if an object gives more range to attacks, it also gives more range to attack-type objects).
- The cost (top left) is the number of coins you need to pay to buy the object in the shop.
- Sometimes, below the card, the number of uses is shown. After that many uses the object is discarded and the pocket that held it is free again.

### Obtaining objects

Objects can be obtained in three ways:

- Buying them in the shop by paying their cost in coins.
- Finding them by searching in an armory tile.
- Finding them by searching in a tile where a random object has spawned.

Bosses also give a specific object when they are killed (see Bosses).

### Pockets and loose objects

- A pocket can hold **at most one object**.
- A pocket that holds an object can only be used to activate that object's action. If the object is passive, the pocket cannot be used for anything, but it still counts as unused for Recovery.
- Besides the pockets, a player can carry up to **2 loose objects** (objects not in any pocket).
- Passive objects work whether they are in a pocket or loose, as long as they are revealed. Active objects can only be activated from a pocket.
- When a player obtains an object they do not need to reveal it until they want to use it. If they already have 2 loose objects, they must put the new object in an empty pocket. Otherwise they can choose between a pocket and a loose slot. While an object is unrevealed, it can be moved freely between unused pockets and loose slots.
- A player can not obtain an object if they have less than 2 free pockets.
- Objects with a limited number of uses are discarded after that many uses.

### Using objects

To use an object's effect, the player must have it revealed; they can reveal it at any time. If the object is active, they activate it by using the pocket that holds it. If the object is passive, the effect applies automatically.

### List

These are the objects used in the second prototype. The **Uses** column shows how many times an object can be used before being discarded (— means unlimited). Objects marked with ★ can only be obtained by defeating bosses.

| Name | A/P | Type | Cost | Uses | Description |
|---|---|---|---|---|---|
| AloField | A | - | 6 | — | Avoid all damage until the end of your turn, including the damage that could be received while using this object. |
| AP Portal | A | - | 6 | 1 | Move a character to another tile. |
| Blink | P | - | 7 | — | At the end of your turn you may disappear. Reappear one move action away at the end of the round. |
| Bomb | A | Attack | 5 | 1 | Deal 5 damage to everyone in the tile, including you. |
| Broken Extending Hand | A | Attack | 5 | 1 | When you hit someone, destroy one of their items instead of dealing damage. |
| Cavalry Lance ★ | P | - | 7 | — | When moving and passing through a tile (not starting or ending there) you may perform a 2-damage attack. |
| Collector's Eye | P | - | 6 | — | When obtaining an object while searching, choose between the obtained object and the top shop object and discard the other. |
| Concrete Mixer | A | Attack | 5 | 1 | Remove a trap or a trap token from the tile you are in. A removed trap tile becomes a plain tile with no number. |
| Constitution Belt | P | - | 6 | — | Whenever you gain health, gain double health (never above your maximum). |
| Crane | A | - | 6 | 1 | Swap the positions of two tiles with everything they contain. |
| Deja Vu Machine | A | - | 7 | — | Recover 1 pocket. You may activate an additional pocket this turn. |
| Dream Extractor | P | - | 6 | — | Gain 1 extra point per Nightmare killed. |
| Echo Chamber ★ | A | - | 7 | — | The next action you take can be performed twice. |
| Ectoplasm | P | - | 6 | — | Increase movement by 5 but reduce damage by 2. |
| Emergency Time Jump | A | Movement | 5 | 1 | Teleport to any tile. |
| Ensnaring Strike | A | Attack | 6 | — | Make an attack and prevent the attacked player from leaving their tile until the end of their next turn. |
| Explorer's Manual ★ | P | - | 7 | — | When searching, search twice. |
| Extending Hand | A | Attack | 7 | — | When you hit an enemy, steal a random object instead of dealing damage (bosses have the object they give as reward). |
| Fear Toxin | A | Attack | 6 | — | Spawn a Nightmare. |
| Forgotten Dream | A | - | 6 | 1 | Take a random object from the discarded object deck. |
| Grappling Hook | A | Movement | 6 | — | Move in one direction until you cannot move further. |
| Health Potion | A | - | 5 | 1 | Recover half of your maximum health (rounded up). |
| High-Bourgeois Monocle | P | - | 7 | — | If you were to gain coins, gain double those coins. |
| Horror Movie | A | - | 5 | 1 | Move up to two Nightmares from one tile to another. |
| Invisibility Potion | A | - | 6 | 1 | Avoid all damage until your next turn. |
| Lich Heart | P | - | 7 | — | Create a beacon in your current position if none exists. If you die, return to it with full health and discard this object. |
| Lucky Coin | P | - | 6 | — | Gain 1 extra coin per Nightmare killed. |
| Magnifying Glass | P | - | 6 | — | Increase your search range by 1 (your default search range is 0, so you can search in adjacent tiles). |
| Mechanical Tape | A | - | 5 | 1 | Place a belt in the current tile. |
| Non-Aggression Treaty | A | - | 5 | 1 | Place a no-aggression field on a tile. |
| Normal Pocket ★ | P | - | 7 | — | Gives you 2 additional loose slots (this object occupies one of them, so you gain one extra slot). It grants no extra actions. |
| Parasite | P | - | 0 | — | Does nothing. |
| Portal Chalk | A | - | 6 | 2 | Place a portal in the current tile. |
| Radioactive Stone | P | - | 7 | — | When you receive damage you may perform a Move action (without using a pocket). |
| Remote-Controlled Robot | P | - | 6 | — | You can spend an action to create a drone if you have none in play. You may always act as if you were in its position. |
| Repair Kit | P | - | 7 | — | Whenever you discard an object you may pay 3 coins to recover it. |
| Salad | P | - | 6 | — | Increase your maximum health by 3. |
| Scythe | P | - | 7 | — | When you attack, recover 1 health. |
| Shovel | A | - | 6 | 1 | Place a trap that does not affect you in a tile. |
| Small Blades | P | - | 6 | — | Instead of a normal attack you may perform two attacks dealing 2 damage each. |
| Snout | P | - | 6 | — | When you search you may perform a Move action (without using a pocket). |
| Speed Potion | A | - | 6 | 1 | During this round each action you take can be performed twice. |
| Spiky Jacket | P | - | 6 | — | Whenever an enemy attacks you, that enemy takes 2 damage. |
| Spring Blade | A | Attack | 6 | — | Perform as many 2-damage attacks as the number of attacks you made this round. |
| Spring Shoes ★ | P | - | 7 | — | After performing an attack you may perform a Move action (without using a pocket). |
| Swiss Army Knife | P | - | 7 | — | Can be used as any object to avoid traps. |
| Teleport Beacon | A | Movement | 7 | — | Create a beacon in your current position if none exists, otherwise teleport to it. |
| Teleportation Belt | P | - | 7 | — | Each time you attack you may teleport to a random tile. |
| Thick Handle | P | - | 7 | — | Increase your attack range by 1. |
| Trap Arsenal | A | Attack | 7 | — | Place a trap that does not affect you. Remove it when triggered. |
| Unreliable Armor | P | - | 6 | — | When taking damage roll 1d8. On a 7 or 8, avoid the damage. |
| Unstable Space | A | - | 5 | 1 | Place a spatial instability in a tile. |
| Vampire Teeth | P | - | 6 | — | When you gain health you may perform a Move action (without using a pocket). |
| Very Big Coin | A | - | 5 | 1 | Gain 5 coins. |
| Very Guided Missile | A | - | 6 | 1 | Pay 2 coins to destroy another player's object. |
| Very Large Mace | P | - | 6 | — | Increase damage by 2 and reduce movement by 1. |
| Vitality Potion | A | - | 6 | 1 | Recover 2 pockets and use them this turn. |
| Winged Boots | P | - | 6 | — | Increase the number of tiles you can move by 2. |
| Self-Replicating Armor | P | - | 7 | — | When you receive damage, instead receive that damage minus 1. |
| Trap Blueprint | A | - | 6 | 1 | Copy any tile modification in the game and put it into any other tile. |

The five boss-only objects are: Spring Shoes, Explorer's Manual, Normal Pocket, Echo Chamber and Cavalry Lance.

## Traps and Nightmares

Trap tiles and tiles with Nightmares are tiles where a player receives damage when they use a pocket in that tile. The order is:

1. The player uses a pocket in a tile with Nightmares or a trap.
2. The player receives damage from the Nightmares or the trap in that tile.
3. The action the player was performing resolves. If the player would gain any benefit from it, they still gain it even if they are dead.
4. The player checks if they are dead and acts accordingly.

### Nightmares

A Nightmare card looks as follows:

![Nightmare card]({{< fullimg "images/nightmare.webp" >}})

Where:

- The top left icon indicates the amount of damage the Nightmare does.
- The top right icon indicates the health points of the Nightmare.
- The bottom right icon indicates the number of points the player gets for killing the Nightmare.
- The bottom left icon indicates the number of coins the player gets for killing the Nightmare.

Nightmares completely heal themselves at the end of the round.

When using a pocket in a tile with Nightmares, each Nightmare deals its damage to the player (it is considered as the Nightmare attacking the player). The player chooses the order in which the Nightmares attack.

When a player kills a Nightmare, they receive the points and coins it gives and the Nightmare is removed from the tile.

### Bosses

A boss card looks as follows:

![Boss card]({{< fullimg "images/boss.webp" >}})

Where:

- The top left icon indicates the amount of damage the boss does.
- The top right icon indicates the health points of the boss.
- The bottom right icon indicates the number of points the player gets for killing the boss (24 points, except for Enochlophobia, which gives 12).
- The bottom left icon indicates the number of coins the player gets for killing the boss (12 coins).
- The type at the top identifies the type of boss.
- The text at the center indicates the boss's special ability.
- The text below the name indicates the object they give to the player who kills them.

Bosses function like Nightmares, but they are more dangerous and have a special ability. Bosses are shuffled into the Nightmare deck, so they appear like any other Nightmare.

When a boss is defeated, the points and coins it gives are evenly divided among the players who attacked it this round. Rewards always divide evenly, except when exactly 5 players contributed, in which case each share is rounded down. Additionally, the player who dealt the killing blow automatically obtains the object that boss gives.

These are the bosses and Nightmares used in the second prototype:

| # | Name | Attack | Life | Effect | Item | Points | Coins | Appearances |
|---|------|--------|------|--------|------|--------|-------|-------------|
| 1 | Basophobia | 3 | 10 | Whenever this Nightmare receives damage, it moves to a random adjacent tile. | Spring Shoes | 24 | 12 | 1 |
| 2 | Enochlophobia | 1 | 1 | At the end of each turn, this Nightmare creates a copy of itself in each adjacent valid tile (one not containing other Nightmares or modifications). Attacking any copy counts as attacking the boss. The boss is defeated when its last copy is killed. | Explorer's Manual | 12 | 12 | 1 |
| 3 | Catoptrophobia | 2 | 12 | Whenever this Nightmare receives damage, create a copy of itself without this ability in the current tile. The copies are plain 2-attack, 12-life Nightmares that give nothing when killed. | Normal Pocket | 24 | 12 | 1 |
| 4 | Peniaphobia | 3 | 10 | When you receive an attack from this Nightmare, one of your unused pockets is used up at random. | Echo Chamber | 24 | 12 | 1 |
| 5 | Topophobia | 3 | 10 | When this Nightmare deals damage to a player, that player is teleported to a random tile. | Cavalry Lance | 24 | 12 | 1 |
| 6 | Microphobia | 1 | 1 | | | 2 | 0 | 15 |
| 7 | Phobia | 3 | 3 | | | 3 | 1 | 20 |
| 8 | Macrophobia | 3 | 5 | | | 5 | 2 | 10 |

Copies of Enochlophobia count as Nightmares for every rule that counts Nightmares (the 3-Nightmare limit of a tile and the ending condition where every numbered tile has a Nightmare).

### Traps

Traps are tiles that deal 3 damage to a player when they use a pocket inside them or move through them, unless the player has the object that the trap tile requires (the object token assigned to it).

### Other modifications in tiles

Some objects can add a modification to a tile. These modifications are signified by a token placed in the tile. The possible modifications are:

- **Portal**: Whenever a player enters a tile with a portal they can decide to appear in any other tile with a portal (there are normally 2 portals, but there can be more). Appearing through a portal does not trigger the portal of the destination, so portals can never loop.
- **Belt**: Moving out of the tile in the direction specified by the belt always costs 1 less movement. Going out in any other direction always costs 1 more movement.
- **Spatial instability**: Whenever a player enters or passes through this tile, they are teleported to a random tile. Since the destination's effects apply, a very unlucky player can be teleported repeatedly.
- **Trap**: Whenever a player uses a pocket in this tile or moves into or through it, they receive 3 damage. Objects like the Shovel create traps that do not affect their creator.
- **One-use trap**: A trap that is destroyed the first time it is activated.
- **No-aggression field**: No damage can be dealt or received in the affected tile.

There are also breakable tokens with 1 life point, whose behavior is described in the object that creates them: **Beacon** and **Drone**.

- A **drone** is created by the Remote-Controlled Robot. While there is a drone in play and you have the Remote-Controlled Robot object, you may act as if you were in its tile, and all effects of that tile (damage, Nightmares, modifications) affect the drone, not you. When the drone is destroyed, you lose the ability until you create a new one (using the object's action again).
- A **beacon** is a single token on the board (see Lich Heart and Teleport Beacon).

The Concrete Mixer can remove a trap or a trap token. Removing a trap tile turns it into a plain tile without a number. Removing a trap token only removes the token.

## Death and stealing points

When a player's health reaches 0, they die. They return to their starting tile with full health and leave 5 points on the tile where they died. If they have fewer than 5 points, they leave all of them. That is the only penalty: they keep their coins, objects and wish crystals. Other players can pick those points up by performing a search action on that tile.

## Other tiles

### Starting tiles

Starting tiles are where players begin the game and where they return after dying. Each player has a specific starting tile. Starting tiles have no number, so Nightmares and objects never appear there randomly.

### Fountains

When searching in a fountain, if it still has 5 points in it, a player may pay 1 coin to obtain those points.

### Armories

Armories are tiles that can contain an object. When a player searches in a non-empty armory they can obtain the object in it.

### Treasure tiles

Treasure tiles are tiles that can contain coins. When a player searches in a non-empty treasure tile they can obtain the coins in it.

### Well

The Well is a tile where players pay points to obtain wish crystals. When a player searches in the Well with at least 15 points, they can pay 15 points to take a wish crystal from it. A player can also discard an object they own to gain 3 coins. The Well has a number token like other numbered tiles.

## Example of a turn

Ana has 3 health, and is on a tile with a Phobia (3 damage, 3 life). She uses a pocket to perform an Attack.

1. She uses a pocket in a tile with a Nightmare.
2. The Phobia attacks her before her action resolves: she goes from 3 to 0 health.
3. Her attack deals 3 damage to the Phobia and kills it. She gains 3 points and 1 coin, and the Phobia is removed from the tile.
4. She is dead, so she leaves 5 points on the tile where she died and returns to her starting tile with full health.

If she had moved out of the tile instead, she would also have taken the 3 damage first, because the Move action used a pocket in that tile.

## Ending the game

The game can end in three ways:

- **A player obtains their 3rd wish crystal**: that player wins the game immediately.
- **Every numbered tile has at least one Nightmare**: the game ends immediately and everyone loses.
- **The Nightmare deck is emptied**: when it happens, the game ends at the end of that round. The player with the most points wins (in this count, each wish crystal counts as 15 points). Ties are broken by the number of wish crystals, then by the number of coins.