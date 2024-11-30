# Survivors Game

**Survivors Game** is a 2D survival game where the player collects apples while avoiding mobs. The game challenges players to collect a set number of apples to win, all while managing survival against dynamically spawning enemies.

## Features

- **Apple Collection**:
  - Apples spawn at random positions in the game scene.
  - Collect all apples (e.g., 20 apples) to win the game.

- **Dynamic Mob Spawning**:
  - Mobs appear at random intervals and locations, creating a challenging survival experience.

- **Game Over Mechanic**:
  - Losing all health or entering the river triggers a game-over screen, pausing the game.

- **Randomized Gameplay**:
  - Both apple and mob spawns are randomized to ensure no two games are alike.

## Setup Instructions

1. **Requirements**:
   - [Godot Engine](https://godotengine.org/) (Version 3.2 or later).
   - Apple and mob scene files (`Apple.tscn` and `mob.tscn`).

2. **Project Structure**:
   Ensure your scene tree includes the following nodes:

3. **Asset Placement**:
- Place all assets, including `Apple.tscn` and `mob.tscn`, in the `res://` directory.
- Update the script paths if the assets are located elsewhere.

4. **Timers Configuration**:
- Adjust the spawn intervals for mobs and apples by modifying the `Wait Time` property of `MobTimer` and `AppleTimer`.

## How to Play

1. Launch the game from the main scene.
2. Move the player using arrow keys.
3. Collect apples to reach the goal (e.g., 20 apples).
4. Avoid mobs and do not fall into the river.
5. Winning or losing triggers a game state change.

## Game Logic Overview

### Apple Spawning
Apples are spawned at random positions using a Timer node (`AppleTimer`) and a preloaded Apple scene (`Apple.tscn`).

### Mob Spawning
Mobs are spawned dynamically using another Timer node (`MobTimer`) and the preloaded mob scene (`mob.tscn`).

### Game Over
The player’s health depletion or entering the river triggers the game-over state, pausing the game and showing a "Game Over" UI.

## Planned Features

- Additional levels with increased difficulty.
- Power-ups for the player.
- More enemy types with unique behaviors.
- Improved visual effects and animations.


