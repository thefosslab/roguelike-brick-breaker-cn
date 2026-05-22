## Core Game Loop and Mechanics

**Moment-to-Moment Gameplay:**
The player experiences a tense cycle of aiming, firing, and watching their shot arc through the block field. Each turn consists of:
1. Drag horizontally across the screen to aim the top-mounted cannon
2. Release to fire the ball, which immediately begins falling under gravity
3. Watch as the ball bounces through blocks, dealing 1 damage per hit
4. Wait for the ball to exit through the bottom and return to the cannon
5. A new row of blocks spawns at the bottom, pushing everything up one level
6. Repeat with increasingly difficult block formations

**Progression & Engagement:**
- Blocks spawn with HP equal to their row number (row 1 = 1 HP, row 10 = 10 HP)
- Each turn adds a new row, creating escalating difficulty
- Players must strategically aim to maximize bounces and clear critical paths
- The rising threat creates urgency - blocks must be cleared before reaching the top
- Gravity physics add skill depth - players learn to use arcing trajectories for multi-bounce chains

**Win/Lose Conditions:**
- **Loss:** Game ends when any block touches the top boundary
- **Success Metric:** Survive as many rounds as possible (score = number of rounds survived)
- No traditional "win" - this is an endless survival challenge

**Compelling & Replayable Elements:**
- Physics-based aiming requires skill mastery
- Each shot creates unique bounce patterns
- Strategic depth in choosing which blocks to prioritize
- "One more try" appeal of endless survival
- Satisfying multi-bounce chains when shots thread through gaps

## Starting Scope

**First Iteration Must Include:**
- Top-mounted cannon that rotates based on horizontal drag
- Single ball with gravity physics and bounce mechanics
- Blocks that spawn in rows at the bottom with visible HP numbers
- Block HP scaling (row number = base HP)
- Collision detection between ball and blocks (1 damage per hit)
- Ball return system (exits bottom, teleports to cannon)
- Row advancement after each shot
- Game over when blocks reach top
- Score tracking (rounds survived)
- Aiming guide (dotted trajectory line showing initial path with gravity arc)
- Touch controls for mobile and mouse controls for desktop

**Defer to Future Iterations:**
- Power-ups or special blocks
- Multiple ball types
- Combo/chain scoring bonuses
- Leaderboards or achievements
- Visual effects polish (particle explosions, screen shake)
- Sound effects and music
- Different difficulty modes

## Game Perspective

**Fixed-screen vertical view** - The entire play area is visible at once in portrait orientation. The cannon is fixed at the top center, blocks rise from bottom to top, and the ball travels within this contained space. This perspective is ideal for:
- Clear visibility of all blocks and their HP values
- Precise aiming with the trajectory guide
- Tracking the ball's physics-based movement
- Monitoring the rising threat of blocks approaching the top

## Game World and Level Design

**Play Area:**
- Portrait-oriented rectangular field (720×1280 pixels)
- Cannon mounted at top center (y = 80px from top)
- Block spawn zone at bottom
- Side walls provide bounce surfaces
- Bottom boundary is the ball exit/return zone
- Top boundary is the defeat line

**Block Layout:**
- Blocks arranged in horizontal rows
- Each row contains 7 blocks with small gaps between them
- Block dimensions: ~90px wide × 60px tall
- Gaps between blocks: ~12px (critical for ball passage)
- First row spawns at y = 1100px (leaving room for 15-16 rows before reaching top)

**Spatial Dynamics:**
- Cannon rotation range: approximately -75° to +75° from vertical
- Gravity constant: 800 pixels/second² (strong enough to create pronounced arcs)
- Ball initial velocity: 1200 pixels/second (fast enough to reach bottom before excessive arc)
- Ball radius: 12px
- Bounce coefficient: 0.95 (slight energy loss for realism)

**Visual Hierarchy:**
- Cannon and aiming guide at top (always visible)
- Score/round counter in top corner
- Block field dominates center/bottom area
- HP numbers clearly visible on each block
- Color coding: blocks darken or change hue as HP increases

## Edit Mode Design

**Editable Properties:**

1. **Physics Parameters:**
   - Gravity strength (400-1200 px/s²)
   - Ball initial velocity (800-1600 px/s)
   - Bounce coefficient (0.7-1.0)
   - Ball size (8-20px radius)

2. **Difficulty Settings:**
   - Starting HP multiplier (0.5x-2x)
   - Number of blocks per row (5-9)
   - Block spawn rate (every shot, every 2 shots, etc.)

3. **Visual Customization:**
   - Cannon color
   - Ball color
   - Block color scheme
   - Background color/gradient
   - Trajectory guide style (dotted, dashed, solid)

4. **Game Rules:**
   - Enable/disable trajectory guide
   - Ball return speed (instant, animated)

**Constraints:**
- Gravity must remain positive (no reverse gravity)
- Block count per row: 5-9 (too few = too easy, too many = impossible)
- Ball size: 8-20px (visibility and gameplay balance)
- Bounce coefficient: 0.7-1.0 (below 0.7 makes ball too dead)
- Initial velocity: 800-1600 (too slow = boring, too fast = uncontrollable)

**Edit Mode Interface:**
- Sliders for numeric values
- Color pickers for visual elements
- Toggle switches for boolean options
- "Reset to Default" button for each category
- Live preview of changes (except mid-game)

## Control Design

**Genre:** Arcade physics puzzle with aiming mechanics
**Camera:** Fixed-screen vertical view

**Mobile (Touch) Controls:**
- **Aim:** Drag finger horizontally anywhere on screen to rotate cannon
  - Touch down: Begin aiming, show trajectory guide
  - Touch move (horizontal): Rotate cannon angle (-75° to +75°)
  - Vertical movement ignored for aiming
- **Fire:** Release finger to launch ball
- **Visual Feedback:** 
  - Dotted trajectory line appears during touch
  - Cannon visually rotates to match aim angle
  - Trajectory line updates in real-time as finger moves

**Desktop (Keyboard/Mouse) Controls:**
- **Aim:** Move mouse horizontally to rotate cannon
  - Mouse X position maps to cannon angle
  - Center of screen = 0° (straight down)
  - Left edge = -75°, Right edge = +75°
- **Fire:** Click to launch ball
- **Visual Feedback:**
  - Trajectory guide always visible when ball is in cannon
  - Cannon tracks mouse position continuously

**Implementation Details:**
- Single input mode: aiming/firing (no complex multi-action needed)
- Prevent default touch behaviors to avoid scrolling
- Track single touch ID on mobile (ignore multi-touch)
- Clear input state on window blur
- Lock trajectory angle when ball is in flight (no aiming during active shot)
- Trajectory guide calculation:
  - Show ~10-15 dots along predicted path
  - Calculate positions using projectile motion equations
  - Account for gravity in arc prediction
  - Extend guide ~300-400px or until first predicted collision

**Control Flow:**
1. Ball in cannon → aiming active → show guide
2. Fire input → launch ball → hide guide, disable aiming
3. Ball exits bottom → return to cannon → re-enable aiming

## Art Style and Visual Theme

**Overall Style:** Clean, modern arcade aesthetic with a sci-fi/tech theme. Sharp geometric shapes, glowing elements, and a dark background create focus on gameplay elements.

**Color Palette:**
- Background: Deep space blue/black gradient (#0a0e27 to #1a1f3a)
- Cannon: Metallic silver/blue with glowing cyan accents (#4a9eff, #2d5f8f)
- Ball: Bright cyan/white with glow effect (#00ffff, #ffffff)
- Blocks: Gradient from warm (low HP) to cool (high HP)
  - 1-3 HP: Yellow to orange (#ffeb3b to #ff9800)
  - 4-7 HP: Orange to red (#ff9800 to #f44336)
  - 8-12 HP: Red to purple (#f44336 to #9c27b0)
  - 13+ HP: Purple to deep blue (#9c27b0 to #3f51b5)
- UI Text: White with subtle glow (#ffffff)
- Trajectory Guide: Semi-transparent cyan dotted line (#00ffff, 50% opacity)

**Asset Sizes & Scale:**
- Cannon: ~120px wide × 80px tall (prominent but not overwhelming)
- Ball: 24px diameter (12px radius)
- Blocks: ~90px wide × 60px tall
- HP numbers: 24-32px font size (clearly readable)

**Rendering Approach:**
- **Code-rendered (Canvas/CSS):**
  - Blocks: Simple rectangles with gradient fills and HP text
  - Ball: Circle with radial gradient glow
  - Trajectory guide: Dotted line using canvas arc/circle drawing
  - Background: CSS gradient
  - UI elements: HTML/CSS text overlays
  
- **Generated Assets:**
  - Cannon turret: Detailed sci-fi weapon with rotation pivot
  - Particle effects for block destruction (optional for polish)

**Visual Consistency:**
- All elements share the sci-fi/tech aesthetic
- Glowing effects on interactive elements (cannon, ball)
- Smooth gradients and clean edges throughout
- High contrast ensures readability on mobile screens
- Dark background keeps focus on bright gameplay elements

**Technical Considerations:**
- Canvas rendering for game field (blocks, ball, trajectory)
- HTML overlay for score/UI (easier text rendering)
- Transparent background on cannon asset for smooth rotation
- Block colors calculated programmatically based on HP value
- Glow effects using canvas shadow properties or radial gradients
