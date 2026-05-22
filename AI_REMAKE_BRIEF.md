# AI Remake Brief: Brick Breaker Style Game

Build a vertical canvas arcade game inspired by the referenced Astrocade game, but implement it as fresh code.

## Core Loop

The player controls a top-mounted cannon in a portrait playfield. Drag or move horizontally to aim, then release/click to fire balls downward. Balls are affected by gravity, bounce off walls and bricks, damage numbered bricks, then exit at the bottom and return to the cannon. After the shot resolves, new bricks spawn at the bottom and existing bricks advance upward. The run ends when any brick reaches the top boundary.

## Key Feel

- Portrait field: `720 x 1280`.
- Cannon sits near the top center.
- Blocks rise from bottom to top.
- Aim range is roughly `-75deg` to `+75deg`.
- The aiming guide is a dotted projected trajectory.
- Bricks show compact HP text and use stronger colors as HP rises.
- The game is endless survival with skill-upgrade choices every few rounds.

## Starting Config

Use these as initial tuning values:

- Gravity: `2000`
- Ball velocity: `1500`
- Bounce coefficient: `0.6`
- Ball radius: `25`
- Blocks per row: `8`
- Starting rows: `4`
- Skill selection frequency: every `3` rounds
- HP scaling divisor: `9`
- Cannon Y: `-10`
- Trajectory distance: `550`

## Important Mechanics To Recreate

- Canvas-rendered gameplay with HTML/CSS overlay menus.
- Ball damage starts at `1` and can scale through upgrades.
- Score rewards destroyed bricks, with later rounds worth more.
- Blocks use row/round-based HP scaling.
- Lower rows move as a row group early on, while higher stacked bricks can move individually by column.
- Skill deck has common, rare, and epic upgrade categories.
- Special rare/epic drops should pair with one common card and can appear in either slot.
- A first-time tutorial can force specific common skills, then persist a flag so it is not shown again.
- Collision and destroy sounds need cooldowns to avoid audio clutter.

## Upgrade Ideas

Common skills:

- Damage
- Critical hit chance / multiplier
- Remote projectile / sniper shot
- Bomb splash
- Instakill chance

Rare skills:

- Extra projectile
- Burning bricks passive damage

Epic skill:

- Stacking damage per bounce

## Suggested Clean Implementation

Create a new project with:

- `index.html`
- `src/game.js`
- `src/physics.js`
- `src/blocks.js`
- `src/skills.js`
- `src/audio.js`
- `src/storage.js`
- `assets/`

Keep the game deterministic enough to test: isolate random block layouts and skill draws behind helper functions. Avoid copying the reference source verbatim if publishing.
