---
title: "Control the Queue (Boardgame) - First Prototype"
description: "In here I describe the design process of the Control the Queue prototype and its rules."
tags:
  - Boardgames
date: "2026-11-23"
publishDate: "2026-11-23"
series:
  - Control the Queue
#prerequisites:
Summary: "In here I describe the design process of the Control the Queue prototype and its rules."
audio: []
videos: []
images: []
htmlSafe: True
---

# Design Process

# Rulebook of the prototype

Control the Queue is a great deckbuilder, the objective of the game is to win. How do you win? By controlling the highest percentage of a computer once the computer has been completely infected.

You are a group of between 2 and 4 hackers trying to upload your programs into a computer in order to gain control of it before the other hackers do. To win you will need to control not only your upload queue, but also the upload queues of your opponents.

## Objective of the game

The objective of the game is to control the highest percentage of the computer once the computer has been completely infected.

Now, you must be asking, "How do I get control of the computer?" By executing cards that give you control. Wait? Execute cards? Don't worry, we will get to it.

## Components 

The game only needs the following components: 30 decks, one for every different card, each deck containing 12 copies of a single card except for the "DOWNLOAD ROM" and "DOWNLOAD RAM" decks, which contain 24 and 8 extra copies respectively.

## Setup

Select 3 control cards and put their decks in a table next to the decks of the 3 basic ROM cards and the basic RAM card. Choose then 10 other decks which synergies with the control cards. Finally, for each player build an initial deck with 6 copies of the "DOWNLOAD ROM" card and 2 copies of the "DOWNLOAD RAM" card. Each player shuffles their deck and draws 5 cards.

Each player starts with 0 control and 1 queue, which starts empty.

## The cards

The game is a deckbuilder, as such the cards are the most essential part of the game and it is important for us to understand how they work.

### Structure of a card

Each card has the following information:
- **Name**: On the top center, the name of the card.
- **RAM**: On the top left (and the bottom right in the case of the interaction cards) the amount of RAM the card needs to be played (**executed**).
- **ROM**: On the top right, the amount of ROM required to obtain the card.
- **Type**: The type of the card (ROM, Action, Interaction and Control. Mostly irrelevant during play).
- **Queue**: The effect the card has when executed from a queue.
- **Use**: The effect the card has when discarded.

In the case of the interaction cards, the "Queue" effect is divided into two parts, one for when the card is in its owner's queue and another for when it is not.

### List of cards

![List of cards]({{< fullimg "images/cards.webp" >}})

The green cards represent the cards giving ROM, the black cards are the observers, cards that stay in the queue and provide passive benefits. The purple cards are the control cards, which give you control over the computer and are meant to be the way the game ends. The blue cards are the action cards, which provide a one-time effect when executed. Finally, the red cards are the interaction cards, which can be sent to an opponent's queue to disrupt their strategy and have different effects depending on whether they are in their owner's queue or not.

The basic ROM cards are the following:
- **DOWNLOAD ROM**
- **FLASH UPGRADE**
- **BIOS REWRITE**

Finally, a couple of clarifications:
Trash means that the card is removed from the game, queues created stay until the end of the game, removing a crad from a queue discards it. Cards can not move back from the last position.

## Game turn Structure

Now that we know what a card looks like is time for us to see what is this queue thing.

### The queue

Every player has (at least) one queue that starts empty, when a player wants to execute a card they must put it in the back of one of their queues. The queue is a first-in-first-out structure, meaning that the first card in the queue is the first one to be executed. In other words, to execute the card in the back of the queue, a player must first execute all the cards in front of it. All cards added to a queue in any circumstance will be placed at the back of the queue.

How do you execute a card? By discarding any number of cards in your hand you usually generate RAM which will execute all cards it can be used to fully pay for in the queue in order, until you reach a card that you cannot pay for or the queue becomes empty. When this happens all remaining RAM will be lost and all executed cards will go to the discard pile. You can think of the RAM as a monster that consumes as much as it can and then disappears, the moment it is generated it will execute all cards it can and then disappear.

When a card is executed, its "Queue" effect is resolved in order from top to bottom, if an action in the card can not be resolved, any actions below it will not be resolved either. For example, the card "DYNAMIC ALGORITHM" has a "Queue" effect that gives you 20 control, but it also has a "ROM -3" effect. If you do not have enough ROM to pay for the "ROM -3" effect, you will not gain the 20 control.

The process of, given some RAM, executing cards in the queue until it is no longer possible is called an "upload".

### Player Turns

So, how does a player turn goes? At the beginning of a player's turn if any of their queues is not empty, the first card of the queue of their choice is executed for free. Then the player can add any number of cards to the deck until their turn is over. At any point, during their turn or any other player's turn, they may discard any number of cards to use their actions, if they generate RAM with the discard, they may choose a queue to execute cards from. The turn ends when the player has no more cards in their hand or they choose to end their turn.

At the end of the turn, the player can **import** (take from the deck) any number of cards with total ROM cost equal to or less than the amount of ROM they have obtained this turn. The imported cards go to the discard pile and any unused ROM of any player is lost.

Finally, the player draws or discards cards until they have 5 in their hand, shuffling their discard pile and drawing from it if their deck is empty and they need to draw cards.

### Using cards in other players turn,

This is the slightly technical part describing what it means to be able to use your cards at any moment.

The game works with priority, meaning that the player whose turn it is has priority to do actions, after they perform an action (using a card or putting a card in the queue), any player in order can perform an action (using a card). There is no response window, meaning that if a player performs an action no player may act until the action is completely resolved.

### Example of a turn:

Alice has just started the game and has 5 cards in her hand: 4 "DOWNLOAD ROM" and 1 "DOWNLOAD RAM". She puts the "DOWNLOAD RAM" card in her queue first and then 3 "DOWNLOAD ROM" cards.

In that moment Bob discards a "DOWNLOAD ROM" card from his hand to generate 3 RAM, which he uses to execute a "TROJAN HORSE" card, which was the only card on his queue. This card gives him 5 RAM that is immediately lost due to the queue being empty, and is put at the end of Carol's queue due to its queue effect.

Alice then discards her last "DOWNLOAD ROM" card to generate 3 RAM. She executes the "DOWNLOAD RAM" card for 1 RAM, which gives her 5 RAM so she has 7 RAM available. Because there is enough RAM available, she executes the first "DOWNLOAD ROM" card for 2 RAM, which gives her 1 ROM. She executes the second "DOWNLOAD ROM" card for 2 RAM, which gives her another ROM. Finally, she executes the last "DOWNLOAD ROM" card for 2 RAM, which gives her a third ROM. She has now executed all cards in her queue and has 1 RAM left which as the upload has ended are lost. 

She decides to end her turn (as she doesn't have any more cards to discard or put into the queue) so she uses her 3 ROM to import a "TROJAN HORSE" which she takes from its deck and puts into her discard pile. She then has to draw 5 cards, but her deck only has 3 cards left, so she draws 3 cards, shuffles her discard pile and draws another 2 cards from it.

## Ending the game

The game ends the moment the total control of all players has reached 100, if the last player had generated enough control to put the total control beyond 100 the surplus control is lost. The player with the highest control wins the game, if there is a tie, the total ROM value of the cards in the players' decks is used as a tiebreaker.

## Two player variant

The game is designed and balanced for 4 players, for that reason when only 2 players are playing, the RAM cost of interaction cards is doubled and the queue effect of observer cards is enhanced.

More precisely, this are the information for interaction and observer cards in a 2 player game:

| ID | Name | RAM | ROM | Type | Queue | Use |
|---:|------|----:|----:|------|-------|-----|
| 4 | Packet Injection | 8 | 1 | Interaction | **In its owner's queue:** Gain RAM +8 and put it into an opponent’s queue<br>**Not in its owner's queue:** The owner of this program draws a card | Put an interaction card into an opponent’s queue |
| 11 | Trojan Horse | 4 | 3 | Interaction | **In its owner's queue:** Gain RAM +5 and put it into an opponent’s queue<br>**Not in its owner's queue:** The owner of this card gets 5 control from you | Put an interaction card into an opponent’s queue |
| 26 | Logic Bomb | 8 | 5 | Interaction | **In its owner's queue:** Gain RAM +7 and put it into an opponent’s queue<br>**Not in its owner's queue:** While this is in your queue if a card in your queue would make you draw one or more cards, the owner of this card draws them instead | Put an interaction card into another player’s queue |
| 30 | RAM siphoning | 8 | 6 | Interaction | **In its owner's queue:** Gain RAM +5 and put it into an opponent’s queue<br>**Not in its owner's queue:** While this card is on a queue, every card in this queue costs 1 more RAM and every card in its owner’s queue costs 1 less RAM | Put an interaction card into another player’s queue |
| 16 | Voltage Tap | 7 | 3 | Observer | While this card is on the queue, whenever an opponent generates RAM you may generate twice that much RAM | Move a card from a queue you control one position back |
| 20 | Packet Sniffer | 7 | 4 | Observer | While this card is on the queue, whenever a card executed by an opponent draws one or more cards you draw 2 cards<br>Draw a card | Move a card from a queue you control up to 1 position back |
| 21 | Import Hook | 7 | 4 | Observer | While this card is on the queue, whenever an opponent imports a card you may import a card costing at most the same ROM | Move a card from a queue you control one position back |
| 23 | System Crash | 3 | 4 | Observer | Discard all cards from all queues, draw 2 cards for every card discarded this way | Put an interaction card into another player’s queue |




