<!DOCTYPE html>
<html>
<head>
    <title>Brick Breaker</title>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@400;600;700&family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>:root {
            --bg-dark: #0a0e27;
            --bg-light: #1a1f3a;
            --cyan-glow: #00ffff;
            --cyan-dim: #4a9eff;
            --white: #ffffff;
            --transition-fast: 150ms;
            --transition-normal: 300ms;
        }

body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            touch-action: none;
            -ms-touch-action: none;
            background: linear-gradient(180deg, var(--bg-dark) 0%, var(--bg-light) 100%);
            font-family: "Inter", sans-serif;
        }

#game-container {
            position: relative;
            width: 100%;
            height: 100%;
        }

#game-canvas {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

.ui-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
        }

.ui-overlay > * {
            pointer-events: auto;
        }

/* Glassmorphism Score Display */

#score-display { position: absolute; top: 20px; right: 20px; color: var(--white); font-family: "Fredoka", sans-serif; pointer-events: auto; background: transparent; backdrop-filter: none; -webkit-backdrop-filter: none; padding: 0; border-radius: 16px; border: none; box-shadow: none; transition: all var(--transition-normal); min-width: auto; }

#score-display:hover {
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.2) 0%, rgba(255, 255, 255, 0.08) 100%);
            box-shadow: 0 12px 40px rgba(0, 255, 255, 0.15), inset 0 1px 0 rgba(255, 255, 255, 0.3);
            transform: translateY(-2px);
        }

#score-label { font-size: 12px; opacity: 0.75; letter-spacing: 1px; margin-bottom: 6px; font-weight: 600; text-transform: uppercase; color: rgba(255, 255, 255, 0.8); display: none; }

#score-value { font-size: 50px; font-weight: 700; background: linear-gradient(135deg, #ffffff 0%, #e0e0e0 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; display: none; }

/* Skill Indicator LED */

#skill-indicator {
    position: absolute;
    top: 20px;
    left: 20px;
    display: flex;
    pointer-events: none;
    z-index: 100;
}

.skill-led {
    width: 32px;
    height: 32px;
    border-radius: 50%;
    border: 3px solid rgba(255, 255, 255, 0.2);
    background: rgba(100, 100, 100, 0.4); /* Empty state */
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.5);
    transition: all 400ms cubic-bezier(0.4, 0, 0.2, 1);
}

/* Red State (Round 2, 5, 8...) */

.skill-led.red {
    background: radial-gradient(circle at 30% 30%, #ff6b6b, #cc0000);
    box-shadow: 0 0 20px rgba(255, 107, 107, 0.8), inset 0 1px 2px rgba(255, 255, 255, 0.3);
    border-color: rgba(255, 255, 255, 0.6);
}

/* Yellow State (Round 3, 6, 9...) */

.skill-led.yellow {
    background: radial-gradient(circle at 30% 30%, #ffd93d, #ffaa00);
    box-shadow: 0 0 20px rgba(255, 217, 61, 0.8), inset 0 1px 2px rgba(255, 255, 255, 0.3);
    border-color: rgba(255, 255, 255, 0.6);
}

/* Green State (Round 1, 4, 7... - Final step before Skill Screen) */

.skill-led.green {
    background: radial-gradient(circle at 30% 30%, #6bcf7f, #00aa00);
    box-shadow: 0 0 20px rgba(107, 207, 127, 0.8), inset 0 1px 2px rgba(255, 255, 255, 0.3);
    border-color: rgba(255, 255, 255, 0.8);
}

@keyframes scoreBump {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.265);
            }
            100% {
                transform: scale(1);
            }
        }

/* Glassmorphism Game Over Screen */

#game-over-screen {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, rgba(10, 14, 39, 0.85) 0%, rgba(26, 31, 58, 0.85) 100%);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            padding-top: 60px;
            padding-bottom: 60px;
            box-sizing: border-box;
            opacity: 0;
            visibility: hidden;
            transition: opacity var(--transition-normal), visibility var(--transition-normal);
            pointer-events: none;
            overflow-y: auto;
        }

#game-over-screen.visible {
            pointer-events: auto;
            opacity: 1;
            visibility: visible;
        }

#game-over-title { font-family: "Fredoka", sans-serif; font-size: 68px; color: #ffffff; margin-bottom: 0; letter-spacing: 2px; font-weight: 700; text-transform: uppercase; background: none; -webkit-background-clip: text; -webkit-text-fill-color: unset; background-clip: text; text-shadow: 0 0 30px rgba(0, 255, 255, 0.3); order: -1; }

#game-over-score {
            display: none;
        }

/* Glassmorphism Restart Button */

#restart-button { font-family: "Fredoka", sans-serif; font-size: 43.5px; font-weight: 700; padding: 36px 108px; min-height: 144px; min-width: 468px; background: #6bcf7f; backdrop-filter: blur(12px); -webkit-backdrop-filter: blur(12px); border: 2px solid rgba(255, 255, 255, 0.3); border-radius: 20px; color: #000000; cursor: pointer; box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2), inset 0 1px 0 rgba(255, 255, 255, 0.2); transition: all var(--transition-fast); letter-spacing: 1px; position: relative; z-index: 2000; pointer-events: auto !important; -webkit-user-select: none; user-select: none; -webkit-touch-callout: none; touch-action: manipulation; text-transform: uppercase; order: 1; margin-top: auto; }

#restart-button:hover { transform: translateY(-4px); box-shadow: 0 12px 48px rgba(107, 207, 127, 0.5), inset 0 1px 0 rgba(255, 255, 255, 0.3); background: linear-gradient(135deg, #7dd88f 0%, #00cc00 100%); border-color: rgba(255, 255, 255, 0.5); }

#restart-button:active {
            transform: translateY(-2px);
            box-shadow: 0 6px 24px rgba(0, 255, 255, 0.15), inset 0 1px 0 rgba(255, 255, 255, 0.2);
        }

#restart-button:focus-visible {
            outline: 3px solid rgba(0, 255, 255, 0.6);
            outline-offset: 4px;
        }

/* Loading Screen */

#loading-screen {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(180deg, var(--bg-dark) 0%, var(--bg-light) 100%);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    z-index: 2000;
    pointer-events: auto;
}

/* Main Menu Screen */

#main-menu-screen {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(180deg, var(--bg-dark) 0%, var(--bg-light) 100%);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    z-index: 1999;
    pointer-events: auto;
    opacity: 0;
    visibility: hidden;
    transition: opacity var(--transition-normal), visibility var(--transition-normal);
}

#main-menu-screen.visible {
    opacity: 1;
    visibility: visible;
}

#main-menu-title { font-family: "Fredoka", sans-serif; font-size: 72px; color: #ffffff; margin-bottom: 200px; letter-spacing: 3px; font-weight: 700; text-transform: uppercase; background: none; -webkit-background-clip: text; -webkit-text-fill-color: #ffffff; background-clip: text; text-shadow: 0 0 30px rgba(0, 255, 255, 0.3); margin-top: -150px; }

#play-button { font-family: "Fredoka", sans-serif; font-size: 48px; font-weight: 700; padding: 28px 96px; min-height: 96px; min-width: 312px; background: #6bcf7f; backdrop-filter: blur(12px); -webkit-backdrop-filter: blur(12px); border: 2px solid rgba(255, 255, 255, 0.3); border-radius: 20px; color: #000000; cursor: pointer; box-shadow: 0 8px 32px rgba(107, 207, 127, 0.3), inset 0 1px 0 rgba(255, 255, 255, 0.2); transition: all var(--transition-fast); letter-spacing: 2px; position: relative; z-index: 2001; pointer-events: auto !important; -webkit-user-select: none; user-select: none; -webkit-touch-callout: none; touch-action: manipulation; text-transform: uppercase; }

#play-button:hover {
    transform: translateY(-4px);
    box-shadow: 0 12px 48px rgba(107, 207, 127, 0.5), inset 0 1px 0 rgba(255, 255, 255, 0.3);
    background: linear-gradient(135deg, #7dd88f 0%, #00cc00 100%);
    border-color: rgba(255, 255, 255, 0.5);
}

#play-button:active {
    transform: translateY(-2px);
    box-shadow: 0 6px 24px rgba(107, 207, 127, 0.3), inset 0 1px 0 rgba(255, 255, 255, 0.2);
}

#play-button:focus-visible {
    outline: 3px solid rgba(107, 207, 127, 0.6);
    outline-offset: 4px;
}

#loading-text {
    font-family: "Fredoka", sans-serif;
    font-size: 48px;
    color: #ffffff;
    font-weight: 700;
    letter-spacing: 2px;
    text-shadow: 0 0 20px rgba(0, 255, 255, 0.4);
    display: flex;
    align-items: center;
    gap: 0;
    justify-content: center;
}

#loading-text-base {
    display: inline;
}

#loading-text-dots {
    display: inline;
    min-width: 60px;
}

@keyframes loadingDots {
    0% {
        content: "Loading";
    }
    25% {
        content: "Loading.";
    }
    50% {
        content: "Loading..";
    }
    75% {
        content: "Loading...";
    }
    100% {
        content: "Loading";
    }
}</style>
</head>
<body>
    <div id="game-container">
        <canvas id="game-canvas"></canvas>
        <div class="ui-overlay">
            <div id="loading-screen">
                <div id="loading-text">
                    <span id="loading-text-base">Loading</span><span id="loading-text-dots"></span>
                </div>
            </div>
            <div id="score-display">
                <div id="score-label">ROUND</div>
                <div id="score-value">1</div>
            </div>

            <div id="skill-indicator" style="display: none;">
                <div class="skill-led" id="skill-led"></div>
            </div>

            <div id="main-menu-screen">
                <div id="main-menu-title">BRICK BREAKER</div>
                <button id="play-button">PLAY</button>
            </div>

            <div id="game-over-screen">
                <div id="game-over-title">GAME OVER</div>
                <div id="game-over-score">Rounds Survived: 0</div>
                <button id="restart-button">PLAY AGAIN</button>
            </div>
        </div>
    </div>
    
    <script>
        /* ==================================================
         * GAME OVERVIEW: Brick Buster - A reverse-breakout game where players
         * fire a gravity-affected ball from a top-mounted cannon to destroy
         * ascending waves of numeric blocks before they reach the top.
         * 
         * GAME STATE SHAPE: window.gameConfig = {
         *   physics: { gravity, ballVelocity, bounceCoefficient, ballRadius },
         *   difficulty: { hpMultiplier, blocksPerRow, blockSpawnRate },
         *   visual: { cannonColor, ballColor, bgColorTop, bgColorBottom, trajectoryGuideEnabled, trajectoryGuideColor }
         * }
         * ==================================================
         */

        // Constants
        const CANVAS_WIDTH = 720;
        const CANVAS_HEIGHT = 1280;
        const CANNON_WIDTH = 240;
        const CANNON_HEIGHT = 160;
        const BLOCK_HEIGHT = 60;
        const BLOCK_GAP = 12;
        const BLOCK_START_Y = 1215;
        const TOP_BOUNDARY = 135;       // Logic trigger: Game Over if a brick reaches this (Row 16)
        const VISUAL_LIMIT_Y = 207;     // Aesthetic line: Sits perfectly on top of Row 15
        const MIN_ANGLE = -75 * Math.PI / 180;
        const MAX_ANGLE = 75 * Math.PI / 180;
        
        // Helper to get cannon Y from config
        function getCannonY() {
            return window.gameConfig.visual.cannonY || 80;
        }
        
        // Runtime state
        let canvas, ctx;
        let cannonImage = null;
        let cannonAngle = 0;
        let ball = null;
        let balls = []; // Multiple balls for multi-projectile skill
        let blocks = [];
        let damageTexts = []; // Floating damage numbers
        let remoteProjectiles = []; // Projectiles fired from balls to bricks
        let currentRound = 1;
        let score = 0; // Track destroyed bricks
        let gameOver = false;
        let isAiming = false;
        let hasFiredFirstShot = false;
        let currentMode = 'play';
        let touchId = null;
        let lastTime = 0;
        let animationFrameId = null;
        let particles = []; // Particle burst effects
        let cannonRecoil = 0; // Recoil animation state (0 = no recoil, 1 = max recoil)
        let cannonActive = true; // Cannon state: true = active (visible), false = disabled (retracted)
        let cannonRetractAnimation = 0; // Animation progress (0 = fully extended, 1 = fully retracted)
        let cannonRestTimer = 0; // Timer for cannon rest period after recoil
        let cannonRecoilTimer = 0; // Timer tracking recoil completion
        let cannonCanFire = true; // Whether cannon is ready to fire (gated by recoil + rest cycle)
        let ballsPending = 0; // Number of balls left to shoot in the current sequence
        let isFiringSequence = false; // Whether we are currently in the middle of shooting
        let muzzleFlashEffect = null; // Muzzle flash animation state
        let previousLedState = null; // Track the previous LED color state (red, yellow, green, or null)
        let trajectoryRevealAnimation = null; // Trajectory reveal animation state
        let bricksDestroyedCount = 0; // Counter for incremental scoring (1st brick = 1 point, 2nd = 2 points, etc.)
        let currentSpeedMultiplier = 1.0; // Speed multiplier that increases with bounces, resets when balls collected
        const CANNON_RETRACT_DISTANCE = 100; // How far to slide up when disabled
        const CANNON_RETRACT_DURATION = 0.15; // Animation duration in seconds
        const CANNON_REST_DURATION = 0.5; // Rest period after recoil (500ms)
        const CANNON_RECOIL_DURATION = 0.075; // Recoil animation duration (75ms)
        const MUZZLE_FLASH_DURATION = 0.3; // Muzzle flash animation duration (300ms)
        const TRAJECTORY_REVEAL_DURATION = 0.35; // Trajectory reveal animation duration (350ms)
        
        // Block advancement animation state
        let blockAdvanceAnimation = null; // { startTime, duration, rowsToSpawn, newBlocks }
        
        // Roguelike progression state
        let playerUpgrades = {
            numProjectiles: 1,
            extraDamage: 0,
            calculatedBallDamage: 1, // Start at 1
            criticalChance: 0, // 0 = 0%, 1 = 10%, 2 = 20%, etc.
            criticalMultiplier: 1, // Starts at 1x, first upgrade makes it 2x, then 3x, 4x, etc.
            remoteLevel: 0,
            remoteProjectileDamage: 0, // 0 = disabled, 1+ = damage per projectile
            instaKillChance: 0.5, // 0.5 = 0.1% base chance, each upgrade adds 0.2% (capped at 5%)
            bombLevel: 0,
            bombDamage: 0, // 0 = disabled, 1+ = damage to adjacent bricks
            burningBricksDamage: 0, // 0 = disabled, 1+ = percentage damage (10%, 12%, 14%, etc.)
            stackingDamage: 0 // 0 = disabled, 1+ = damage per bounce
        };
        let skillSelectionActive = false;
        let skillSelectionRound = 2; // Show skills every N rounds (set from config)
        let hasSeenFirstSkillSelection = false; // Track if player has completed skill selection tutorial
        let hasSeenGameplayTutorial = false; // Track if player has completed gameplay tutorial
        let hasSeenFirstSkillTutorial = false; // Track if player has seen the two rare skills tutorial (projectile + burning_bricks)
        let gameplayTutorialActive = false; // Track if gameplay tutorial is currently showing
        let lastStackingDamageRound = 0; // Track the last round stacking_damage was offered
        
        // Asset cache
        const assetCache = {};
        let audioContext = null;
        let jellyPopBuffer = null;
        let brickDestroyBuffer = null;
        let skillDiscoveryBuffer = null;
        let upgradeAppliedBuffer = null;
        let cannonShootBuffer = null;
        let backgroundMusicBuffer = null;
        let backgroundMusicSource = null;
        let backgroundMusicGainNode = null;
        
        // Sound cooldown tracking
        let lastBrickDestroyTime = 0;
        const BRICK_DESTROY_SOUND_COOLDOWN = 0.1; // 100ms cooldown between brick destroy sounds
        
        // Calculate bounce coefficient based on distance traveled
        function calculateBounceCoefficient() {
            const config = window.gameConfig;
            const baseCoefficient = config.physics.bounceCoefficient;
            
            // Use a smoother, more natural decay curve
            // The decay is based on how much distance the ball has traveled relative to its launch
            const launchDist = Math.max(ball.launchDistance, 100);
            const distanceRatio = ball.distanceTraveled / launchDist;
            
            // Gentle polynomial decay instead of exponential
            // This creates a more natural feeling bounce progression
            const decayFactor = 1 / (1 + distanceRatio * 0.3);
            
            // Apply decay to base coefficient, but don't go below a minimum
            const minCoefficient = 0.1;
            const decayedCoefficient = Math.max(minCoefficient, baseCoefficient * decayFactor);
            
            return decayedCoefficient;
        }
        
        // Format HP with K/M notation (1.00K, 10.0K, 100K, 1M, etc.)
        function formatHpCompact(hp) {
            if (hp >= 1000000) {
                // Format as M (millions)
                const millions = hp / 1000000;
                if (millions >= 100) {
                    return Math.floor(millions) + 'M';
                } else if (millions >= 10) {
                    return millions.toFixed(1) + 'M';
                } else {
                    return millions.toFixed(2) + 'M';
                }
            } else if (hp >= 1000) {
                // Format as K (thousands)
                const thousands = hp / 1000;
                if (thousands >= 100) {
                    return Math.floor(thousands) + 'K';
                } else if (thousands >= 10) {
                    return thousands.toFixed(1) + 'K';
                } else {
                    return thousands.toFixed(2) + 'K';
                }
            } else {
                // Show exact number
                return hp.toString();
            }
        }
        
        // Helper: Get block color based on HP
        function getBlockColor(hp) {
            if (hp <= 3) {
                const t = (hp - 1) / 2;
                return lerpColor('#ffeb3b', '#ff9800', t);
            } else if (hp <= 7) {
                const t = (hp - 4) / 3;
                return lerpColor('#ff9800', '#f44336', t);
            } else if (hp <= 12) {
                const t = (hp - 8) / 4;
                return lerpColor('#f44336', '#9c27b0', t);
            } else {
                const t = Math.min((hp - 13) / 7, 1);
                return lerpColor('#9c27b0', '#3f51b5', t);
            }
        }
        
        // Helper: Lerp between two hex colors
        function lerpColor(color1, color2, t) {
            const c1 = hexToRgb(color1);
            const c2 = hexToRgb(color2);
            const r = Math.round(c1.r + (c2.r - c1.r) * t);
            const g = Math.round(c1.g + (c2.g - c1.g) * t);
            const b = Math.round(c1.b + (c2.b - c1.b) * t);
            return `rgb(${r}, ${g}, ${b})`;
        }
        
        // Helper: Hex to RGB
        function hexToRgb(hex) {
            const result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
            return result ? {
                r: parseInt(result[1], 16),
                g: parseInt(result[2], 16),
                b: parseInt(result[3], 16)
            } : { r: 0, g: 0, b: 0 };
        }
        
        // Helper: Darken color
        function darkenColor(color, amount) {
            const rgb = typeof color === 'string' && color.startsWith('rgb') 
                ? color.match(/\d+/g).map(Number)
                : Object.values(hexToRgb(color));
            return `rgb(${Math.max(0, rgb[0] - amount)}, ${Math.max(0, rgb[1] - amount)}, ${Math.max(0, rgb[2] - amount)})`;
        }
        
        // ============================================================
        // FIBONACCI SCALING ENGINE - Global Lookup Table
        // ============================================================
        let fibonacciTable = [];
        
        function generateFibonacciTable(maxLevels = 100) {
            fibonacciTable = [];
            
            // Level 0: 1 damage (baseline)
            fibonacciTable[0] = 1;
            
            // Level 1: 2 damage
            fibonacciTable[1] = 2;
            
            // Level 2+: Fibonacci sequence
            // Level N = Level(N-1) + Level(N-2)
            for (let i = 2; i <= maxLevels; i++) {
                fibonacciTable[i] = fibonacciTable[i - 1] + fibonacciTable[i - 2];
            }
            
            lib.log(`Fibonacci table generated: Level 0=${fibonacciTable[0]}, Level 1=${fibonacciTable[1]}, Level 10=${fibonacciTable[10]}, Level 20=${fibonacciTable[20]}`);
        }
        
        // Get damage value for a given upgrade level (uses pre-calculated Fibonacci table)
        function getFibonacciDamage(level) {
            if (level < 0) return fibonacciTable[0];
            if (level >= fibonacciTable.length) return fibonacciTable[fibonacciTable.length - 1];
            return fibonacciTable[level];
        }
        
        // Legacy function for compatibility (maps to Fibonacci)
        function getCalculatedPower(level) {
            return getFibonacciDamage(level);
        }
        
        // Check for instant kill trigger with stacking chance
        function checkInstaKill(ball) {
            if (playerUpgrades.instaKillChance <= 0) {
                return false;
            }
            
            // Base chance per upgrade level: 0.1% (0.001)
            const baseChancePerUpgrade = 0.001;
            const currentBaseChance = playerUpgrades.instaKillChance * baseChancePerUpgrade;
            
            // Current stacking chance = base chance + (bounces * base chance)
            // If ball hasn't bounced yet, use just the base chance
            const bounceCount = ball.bounceCount || 0;
            const stackingChance = currentBaseChance * (1 + bounceCount);
            
            // Cap at 5% (0.05)
            const finalChance = Math.min(stackingChance, 0.05);
            
            return Math.random() < finalChance;
        }
        
        // Fire a remote projectile from a ball to a random brick
        function fireRemoteProjectile(fromX, fromY, stackingBonus = 0) {
            if (playerUpgrades.remoteProjectileDamage <= 0) return;
            
            // FILTER: Only target blocks that are actually alive (HP > 0)
            const livingBlocks = blocks.filter(b => b.hp > 0);
            
            if (livingBlocks.length === 0) return;
            
            // Pick from the living list, not the raw blocks array
            const targetBlock = livingBlocks[Math.floor(Math.random() * livingBlocks.length)];
            
            let remoteDamage = playerUpgrades.remoteProjectileDamage;
            
            // Apply stacking damage bonus if provided
            if (stackingBonus > 0) {
                remoteDamage += stackingBonus;
            }
            
            remoteProjectiles.push({
                x: fromX,
                y: fromY,
                targetX: targetBlock.x + targetBlock.width / 2,
                targetY: targetBlock.y + targetBlock.height / 2,
                targetBlock: targetBlock,
                progress: 0,
                duration: 0.15, 
                damage: remoteDamage,
                hasHitTarget: false // Safety flag
            });
        }
        
        // Apply burning bricks damage to all blocks on screen
                // Apply burning bricks damage to all blocks on screen
        function applyBurningBricksDamage() {
            if (playerUpgrades.burningBricksDamage <= 0 || blocks.length === 0) return;
            
            // Calculate damage percentage: 1% base + 1% per extra upgrade (1%, 2%, 3%, ..., 50% max)
            const damagePercent = 1 + (playerUpgrades.burningBricksDamage - 1) * 1;
            
            // Track the score before applying damage
            const scoreBefore = score;
            
            // Iterate backwards to safely handle marked blocks
            for (let i = blocks.length - 1; i >= 0; i--) {
                const block = blocks[i];
                
                // Skip dead or marked blocks
                if (block.hp <= 0 || block.markedForDeletion) continue;
                
                // Consistent damage calculation
                const damage = Math.max(1, Math.round(block.hp * (damagePercent / 100)));
                
                // Use unified damage function with canInstaKill = false (passive damage shouldn't instakill)
                dealDamageToBlock(block, damage, false, false, null);
            }
            
            // Only animate score if it actually changed (bricks were destroyed)
            const scoreChanged = score > scoreBefore;
            updateScoreDisplay(scoreChanged);
        }
        
        // Spawn red burning particles for burning bricks effect
        function spawnBurningParticles(blockX, blockY, blockWidth, blockHeight) {
            const particleCount = 8 + Math.floor(Math.random() * 4); // 8-11 particles
            const centerX = blockX + blockWidth / 2;
            const centerY = blockY + blockHeight / 2;
            
            for (let i = 0; i < particleCount; i++) {
                const angle = (i / particleCount) * Math.PI * 2;
                const speed = 80 + Math.random() * 60; // 80-140 pixels/sec
                
                particles.push({
                    x: centerX,
                    y: centerY,
                    vx: Math.cos(angle) * speed,
                    vy: Math.sin(angle) * speed,
                    life: 0,
                    maxLife: 0.6, // 600ms total lifetime
                    width: 5 + Math.random() * 3, // 5-8px width
                    height: 5 + Math.random() * 3, // 5-8px height
                    rotation: Math.random() * Math.PI * 2,
                    rotationSpeed: (Math.random() - 0.5) * 8,
                    color: ['#ff4444', '#ff6600', '#ffaa00'][Math.floor(Math.random() * 3)], // Red, orange, yellow
                    isBurning: true
                });
            }
        }
        
        // Unified damage function - all damage sources go through here
        // isCritical is now pre-calculated by the caller (not rolled here)
        function dealDamageToBlock(targetBlock, damageAmount, isCritical = false, canInstaKill = true, ball = null) {
            if (!targetBlock || targetBlock.hp <= 0 || targetBlock.markedForDeletion) return;

            let finalDamage = damageAmount;
            let wasInstaKill = false;

            // ROLL FOR INSTAKILL (Only if allowed for this damage source)
            if (canInstaKill && checkInstaKill(ball)) {
                finalDamage = targetBlock.hp; // Damage equals remaining HP
                wasInstaKill = true;
                isCritical = true; // Treat as a critical for visual feedback
            }

            targetBlock.hp -= finalDamage;
            
            // Trigger Visuals (Flash and Vibration)
            targetBlock.hitAnimationTime = 0;
            targetBlock.vibrationIntensity = isCritical ? 2 : 1;

            // Create Damage Text
            damageTexts.push({
                x: targetBlock.x + targetBlock.width / 2,
                y: targetBlock.y + targetBlock.height / 2,
                damage: Math.floor(finalDamage),
                time: 0,
                freezeTime: 0.3,
                fadeDuration: 0.2,
                totalDuration: 0.5,
                isCritical: isCritical
            });

            if (targetBlock.hp <= 0) {
                targetBlock.hp = 0;
                targetBlock.markedForDeletion = true; // Use a flag!
                
                // --- NEW SCALING COMBO SYSTEM ---
                bricksDestroyedCount++; // This is the combo counter for the current turn
                
                // Calculate points based on Round + Combo
                // We subtract 1 from currentRound so that Round 1 starts at +0 extra base
                let pointsForThisBrick = (currentRound - 1) + bricksDestroyedCount;
                
                score += pointsForThisBrick;
                // ----------------------------------
                
                // Spawn standard destruction particles
                spawnBlockDestroyParticles(targetBlock.x, targetBlock.y, targetBlock.width, targetBlock.height);
                playBrickDestroySound();

                // IF IT WAS AN INSTAKILL: Show the specific icon
                if (wasInstaKill) {
                    createInstaKillEffect(targetBlock.x, targetBlock.y, targetBlock.width, targetBlock.height);
                }

                updateScoreDisplay(true);
            }
        }
        
        // Roll for critical hit (independent chance per damage source)
        function rollForCritical() {
            if (playerUpgrades.criticalMultiplier <= 1) return false;
            const critChance = 0.10; // 10% base critical chance
            return Math.random() < critChance;
        }
        
        // Apply bomb damage to adjacent blocks
                // Apply bomb damage to adjacent blocks
        // Each adjacent brick gets its own independent critical roll
        function applyBombDamage(hitBlock, stackingBonus = 0) {
            if (playerUpgrades.bombDamage <= 0) return;

            let bombDamage = playerUpgrades.bombDamage;
            
            // Apply stacking damage bonus if provided
            if (stackingBonus > 0) {
                bombDamage += stackingBonus;
            }

            // USE THE PROPERTIES, NOT THE COORDINATES
            const hS = hitBlock.slot;
            const hC = hitBlock.col;

            // Loop through all blocks and check integer adjacency
            for (let i = blocks.length - 1; i >= 0; i--) {
                const target = blocks[i];
                
                // Skip self, skip dead bricks
                if (target === hitBlock || target.hp <= 0 || target.markedForDeletion) continue;

                const tS = target.slot;
                const tC = target.col;

                // Adjacency Check (Logical Grid distance of 1)
                const isNeighbor = (tS === hS && Math.abs(tC - hC) === 1) || // Left/Right
                                   (tC === hC && Math.abs(tS - hS) === 1);   // Up/Down

                if (isNeighbor) {
                    // ROLL CRITICAL INDEPENDENTLY FOR EACH ADJACENT BRICK
                    const isCritical = rollForCritical();
                    let finalBombDamage = bombDamage;
                    
                    // Apply critical multiplier only if this brick rolled critical
                    if (isCritical) {
                        finalBombDamage *= playerUpgrades.criticalMultiplier;
                    }
                    
                    dealDamageToBlock(target, finalBombDamage, isCritical, false, null);
                }
            }
        }
        
        // Update remote projectiles
                // Update remote projectiles
        function updateRemoteProjectiles(dt) {
            for (let i = remoteProjectiles.length - 1; i >= 0; i--) {
                const proj = remoteProjectiles[i];
                proj.progress += dt / proj.duration;
                
                if (proj.progress >= 1 && !proj.hasHitTarget) {
                    // Projectile reached target - start return phase
                    proj.hasHitTarget = true;
                    proj.returnStartTime = 0;
                    proj.returnDuration = 0.1; // 100ms for return animation (doubled speed)
                    
                    // ADD THIS CHECK: Is the block still in the game AND still alive?
                    if (proj.targetBlock && blocks.includes(proj.targetBlock) && proj.targetBlock.hp > 0 && !proj.targetBlock.markedForDeletion) {
                        // Use stored remote projectile damage value
                        let damage = proj.damage;
                        
                        // ROLL CRITICAL INDEPENDENTLY FOR THIS REMOTE PROJECTILE
                        const isCritical = rollForCritical();
                        
                        // Apply critical multiplier if this projectile rolled critical
                        if (isCritical) {
                            damage *= playerUpgrades.criticalMultiplier;
                        }
                        
                        // Use unified damage function (remote projectiles cannot trigger instakill)
                        dealDamageToBlock(proj.targetBlock, damage, isCritical, false, null);
                        
                        // Play laser sound with a short delay to avoid overlapping with ball hit sound
                        // Delay of 80ms ensures the first jelly pop has time to play
                        setTimeout(() => {
                            playLaserSound();
                        }, 80);
                    }
                } else if (proj.hasHitTarget) {
                    // Update return phase
                    proj.returnStartTime += dt;
                    
                    if (proj.returnStartTime >= proj.returnDuration) {
                        // Return animation complete - remove projectile
                        remoteProjectiles.splice(i, 1);
                    }
                }
            }
        }
        
        // Initialize game state
        function initGameState() {
            const config = window.gameConfig;
            
            // FIX: Always initialize the deck based on whether the tutorial has been seen
            // This ensures that even on a "Play Again" click, the manager is ready
            SkillDeckManager.initDeck(!hasSeenFirstSkillTutorial);
            
            // Reset the game state object
            gameState.reset();
            
            // RESET SPEED MULTIPLIER at game start
            currentSpeedMultiplier = 1.0;
            
            // Initialize ball in cannon
            const offsetY = config.physics.projectileStartOffsetY || 100;
            ball = {
                x: CANVAS_WIDTH / 2,
                y: getCannonY() + CANNON_HEIGHT / 2 + offsetY,
                vx: 0,
                vy: 0,
                radius: config.physics.ballRadius,
                active: false,
                inCannon: true,
                distanceTraveled: 0,
                launchDistance: 0
            };
            
            // Reset cannon firing state
            cannonCanFire = true;
            cannonRecoilTimer = 0;
            cannonRestTimer = 0;
            
            // Spawn initial rows of blocks
            const { blocksPerRow } = BlockFactory.getBlockDimensions();
            const startingRows = config.difficulty.startingRows || 5;
            const rowHeight = BLOCK_HEIGHT + BLOCK_GAP;
            
            blocks = []; // Clear global blocks array
            
            // For initial blocks, we use currentRound = 1 (already set)
            // So calculateCumulativeBaseHp() will return 1 for all initial rows
            for (let rowIndex = 0; rowIndex < startingRows; rowIndex++) {
                const targetY = BLOCK_START_Y - (rowIndex * rowHeight);
                
                // Create initial blocks using the formula (which gives 1 HP for round 1)
                const baseHp = calculateCumulativeBaseHp();
                const rowBlocks = BlockFactory.createRow(targetY, 1.0);
                
                // Override HP to use the calculated base HP (which is 1 for round 1)
                for (const block of rowBlocks) {
                    block.hp = baseHp;
                    block.maxHp = baseHp;
                    block.hitAnimationTime = 0.15;
                    blocks.push(block); // Add to global blocks array
                    gameState.addBlock(block);
                }
            }
            
            // Update UI
            updateScoreDisplay(false);
            hideGameOver();
            
            // START WITH DARK LIGHTS (Turn them off until player fires)
            previousLedState = null; // Reset LED state tracker
            const led = document.getElementById('skill-led');
            if (led) {
                led.classList.remove('red', 'yellow', 'green');
            }
            
            // Trigger trajectory reveal animation when cannon is loaded
            triggerTrajectoryReveal();
        }

        
        // Calculate HP increment based on current round (scales every 5 levels)
        function calculateHpIncrement() {
            const levelBracket = Math.floor((currentRound - 1) / 5);
            return 1 + levelBracket; // 1 at levels 1-5, 2 at 6-10, 3 at 11-15, etc.
        }
        
        // Calculate cumulative base HP for a given round
        // Spawn burst particles when a block is destroyed
        function spawnBlockDestroyParticles(blockX, blockY, blockWidth, blockHeight) {
            const particleCount = 6 + Math.floor(Math.random() * 3); // 6-8 particles
            const centerX = blockX + blockWidth / 2;
            const centerY = blockY + blockHeight / 2;
            
            for (let i = 0; i < particleCount; i++) {
                const angle = (i / particleCount) * Math.PI * 2;
                const speed = 120 + Math.random() * 80; // 120-200 pixels/sec (reduced from 200-350)
                
                particles.push({
                    x: centerX,
                    y: centerY,
                    vx: Math.cos(angle) * speed,
                    vy: Math.sin(angle) * speed,
                    life: 0,
                    maxLife: 0.4, // 400ms total lifetime
                    width: 6 + Math.random() * 4, // 6-10px width (brick-like)
                    height: 4 + Math.random() * 3, // 4-7px height (brick-like)
                    rotation: Math.random() * Math.PI * 2,
                    rotationSpeed: (Math.random() - 0.5) * 10
                });
            }
        }
        
        // Update muzzle flash effect
        function updateMuzzleFlash(dt) {
            if (!muzzleFlashEffect) return;
            
            muzzleFlashEffect.time += dt;
            
            if (muzzleFlashEffect.time >= MUZZLE_FLASH_DURATION) {
                muzzleFlashEffect = null;
            }
        }
        
        // Update trajectory reveal animation
        function updateTrajectoryReveal(dt) {
            if (!trajectoryRevealAnimation) return;
            
            trajectoryRevealAnimation.time += dt;
            
            if (trajectoryRevealAnimation.time >= TRAJECTORY_REVEAL_DURATION) {
                // Keep the animation object but mark it as complete
                // This ensures the trajectory line stays visible
                trajectoryRevealAnimation.complete = true;
            }
        }
        
        // Trigger trajectory reveal animation
        function triggerTrajectoryReveal() {
            trajectoryRevealAnimation = {
                time: 0,
                duration: TRAJECTORY_REVEAL_DURATION,
                complete: false
            };
        }
        
        // Trigger muzzle flash effect
        function triggerMuzzleFlash() {
            muzzleFlashEffect = {
                time: 0,
                duration: MUZZLE_FLASH_DURATION
            };
        }
        
        // Update cannon recoil animation
        function updateCannonRecoil(dt) {
    if (cannonRecoil > 0) {
        // Decay recoil over CANNON_RECOIL_DURATION
        cannonRecoil = Math.max(0, cannonRecoil - (dt / CANNON_RECOIL_DURATION));
        cannonRecoilTimer += dt;
    }
    
    // SYMBIOSIS CHECK: If recoil just hit 0 and we have balls left, fire the next one
    if (cannonRecoil <= 0 && cannonRecoilTimer > 0) {
        if (ballsPending > 0) {
            executeSequentialShot();
        } else if (isFiringSequence) {
            // Sequence finished, now we can retract the cannon
            isFiringSequence = false;
            cannonActive = false; 
            cannonCanFire = false; // Gated until returnBallToCannon resets it
            cannonRecoilTimer = 0;
        }
    }
}
        
        // Update cannon retract animation (drawer effect)
        function updateCannonRetractAnimation(dt) {
            // If cannon is being disabled, start the rest timer
            if (!cannonActive && cannonRestTimer < CANNON_REST_DURATION) {
                cannonRestTimer += dt;
                // Don't start retracting until rest period is over
                return;
            }
            
            const targetRetraction = cannonActive ? 0 : 1; // 0 = extended, 1 = retracted
            const animationSpeed = dt / CANNON_RETRACT_DURATION;
            
            if (cannonRetractAnimation < targetRetraction) {
                // Animating towards retracted state
                cannonRetractAnimation = Math.min(cannonRetractAnimation + animationSpeed, 1);
            } else if (cannonRetractAnimation > targetRetraction) {
                // Animating towards extended state
                cannonRetractAnimation = Math.max(cannonRetractAnimation - animationSpeed, 0);
                cannonRestTimer = 0; // Reset rest timer when extending
            }
        }
        
        // Update particles
        function updateParticles(dt) {
            for (let i = particles.length - 1; i >= 0; i--) {
                const p = particles[i];
                p.life += dt;
                
                if (p.life >= p.maxLife) {
                    particles.splice(i, 1);
                    continue;
                }
                
                // Apply gravity to particles
                p.vy += 400 * dt; // Gravity pulls particles down
                
                // Update position
                p.x += p.vx * dt;
                p.y += p.vy * dt;
                
                // Update rotation
                p.rotation += p.rotationSpeed * dt;
            }
        }
        
        // Draw particles
        function drawParticles() {
            for (const p of particles) {
                const progress = p.life / p.maxLife;
                const alpha = 1 - progress; // Fade out over time
                
                ctx.save();
                ctx.globalAlpha = alpha * 0.9;
                ctx.translate(p.x, p.y);
                ctx.rotate(p.rotation);
                
                // Use custom color if burning particle, otherwise white
                ctx.fillStyle = p.isBurning ? p.color : '#ffffff';
                ctx.shadowColor = p.isBurning ? p.color : '#ffffff';
                ctx.shadowBlur = p.isBurning ? 8 : 6;
                ctx.fillRect(-p.width / 2, -p.height / 2, p.width, p.height);
                
                ctx.restore();
            }
        }
        
        // Calculate cumulative base HP for a given round using new formula-based scaling
// Calculate cumulative base HP for a given round using the 1/7 scaling formula
function calculateCumulativeBaseHp() {
    const config = window.gameConfig;
    const hpScalingDivisor = config.difficulty.hpScalingDivisor || 7;
    const hpMultiplier = config.difficulty.hpMultiplier || 1;
    
    // Rounds 1-9: Simple +1 increment per round (HP = Round Number)
    if (currentRound <= 9) {
        return Math.round(currentRound * hpMultiplier);
    }
    
    // Round 10+: Geometric scaling based on Round 9
    // Formula: HP = 9 * (1 + 1/divisor)^(currentRound - 9)
    const baseAtNine = 9;
    const growthRate = 1 + (1 / hpScalingDivisor);
    const exponent = currentRound - 9;
    
    const scaledHp = baseAtNine * Math.pow(growthRate, exponent);
    
    // Use Math.round to match spreadsheet standard rounding
    return Math.round(scaledHp * hpMultiplier);
}
        
        // Generate a block layout with a specific fill rate and perfect symmetry
        // Generate a block layout with varied symmetry modes for maximum variety
// Generate a block layout with varied symmetry modes for maximum variety
function generateBlockLayout(blocksPerRow, fillRate) {
    // Special case: If fillRate is 1.0 (100%), return a fully filled layout with no gaps
    if (fillRate >= 0.99) {
        return new Array(blocksPerRow).fill(true);
    }
    
    const layout = new Array(blocksPerRow).fill(false);
    const targetBlockCount = Math.round(blocksPerRow * fillRate);
    
    // Choose a "Flavor" for this row
    const dice = Math.random();
    
    if (dice < 0.7) {
        // 70% Chance: Mirror Symmetry (Clean, polished look)
        return generateMirrorSymmetricLayout(blocksPerRow, targetBlockCount);
    } else if (dice < 0.85) {
        // 15% Chance: Shift Symmetry (Creates diagonal patterns)
        return generateShiftSymmetricLayout(blocksPerRow, targetBlockCount);
    } else {
        // 15% Chance: Pure Random (Organic, unpredictable)
        return generateRandomLayout(blocksPerRow, targetBlockCount);
    }
}

// Helper: Generate mirror symmetric layout
function generateMirrorSymmetricLayout(blocksPerRow, targetBlockCount) {
    const layout = new Array(blocksPerRow).fill(false);
    const isOdd = blocksPerRow % 2 === 1;
    const halfLength = Math.floor(blocksPerRow / 2);
    
    // Create the left half
    const leftHalf = new Array(halfLength).fill(false);
    const targetLeftBlocks = Math.floor(targetBlockCount / 2);
    
    // Shuffle positions
    const positions = [];
    for (let i = 0; i < halfLength; i++) {
        positions.push(i);
    }
    
    for (let i = positions.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [positions[i], positions[j]] = [positions[j], positions[i]];
    }
    
    // Place blocks
    for (let i = 0; i < targetLeftBlocks && i < positions.length; i++) {
        leftHalf[positions[i]] = true;
    }
    
    // Mirror to create full layout
    for (let i = 0; i < halfLength; i++) {
        layout[i] = leftHalf[i];
        layout[blocksPerRow - 1 - i] = leftHalf[i];
    }
    
    // Handle center block for odd-length rows
    if (isOdd && targetBlockCount % 2 === 1) {
        layout[halfLength] = true;
    }
    
    // 20% chance to flip one random block to break the pattern
    if (Math.random() < 0.2) {
        const r = Math.floor(Math.random() * blocksPerRow);
        layout[r] = !layout[r];
    }
    
    return layout;
}

// Helper: Generate shift symmetric layout (creates diagonal patterns)
function generateShiftSymmetricLayout(blocksPerRow, targetBlockCount) {
    const layout = new Array(blocksPerRow).fill(false);
    const mid = Math.ceil(blocksPerRow / 2);
    
    // Generate a seed pattern
    const seed = new Array(mid).fill(false);
    const fillCount = Math.ceil(targetBlockCount / 2);
    
    let indices = Array.from({length: mid}, (_, i) => i);
    for(let i = 0; i < fillCount && i < indices.length; i++) {
        let r = Math.floor(Math.random() * indices.length);
        seed[indices[r]] = true;
        indices.splice(r, 1);
    }
    
    // Shift the seed pattern to create diagonal effect
    for(let i = 0; i < blocksPerRow; i++) {
        layout[i] = seed[i % mid];
    }
    
    // 20% chance to flip one random block
    if (Math.random() < 0.2) {
        let r = Math.floor(Math.random() * blocksPerRow);
        layout[r] = !layout[r];
    }
    
    return layout;
}

// Helper: Generate pure random layout (asymmetric)
function generateRandomLayout(blocksPerRow, targetBlockCount) {
    const arr = new Array(blocksPerRow).fill(false);
    let indices = Array.from({length: blocksPerRow}, (_, i) => i);
    
    for (let i = 0; i < targetBlockCount && i < indices.length; i++) {
        const randIdx = Math.floor(Math.random() * indices.length);
        arr[indices[randIdx]] = true;
        indices.splice(randIdx, 1);
    }
    
    return arr;
}
        
        // Initialize the fill rate bucket
        function initializeFillRateBucket() {
            const config = window.gameConfig;
            const weights = config.difficulty.fillRateWeights || [
                { fillRate: 1.0, weight: 25 },   // 100%
                { fillRate: 0.75, weight: 5 },   // 75%
                { fillRate: 0.63, weight: 10 },  // 63%
                { fillRate: 0.50, weight: 15 },  // 50%
                { fillRate: 0.38, weight: 20 },  // 38%
                { fillRate: 0.25, weight: 25 }   // 25%
            ];
            
            // Create bucket with weighted entries
            const bucket = [];
            for (const entry of weights) {
                for (let i = 0; i < entry.weight; i++) {
                    bucket.push(entry.fillRate);
                }
            }
            
            // Shuffle bucket
            for (let i = bucket.length - 1; i > 0; i--) {
                const j = Math.floor(Math.random() * (i + 1));
                [bucket[i], bucket[j]] = [bucket[j], bucket[i]];
            }
            
            return bucket;
        }
        
        // ============================================================
        // BLOCK FACTORY - Centralized block creation logic (DRY)
        // ============================================================
        const BlockFactory = {
            // Get shared block dimensions
            getBlockDimensions() {
                const config = window.gameConfig;
                const blocksPerRow = config.difficulty.blocksPerRow || 7;
                const totalGapWidth = (blocksPerRow + 1) * BLOCK_GAP;
                const blockWidth = (CANVAS_WIDTH - totalGapWidth) / blocksPerRow;
                return { blocksPerRow, blockWidth, totalGapWidth };
            },
            
            // Get base HP for current round
            getBaseHp() {
                const config = window.gameConfig;
                return Math.ceil(calculateCumulativeBaseHp() * (config.difficulty.hpMultiplier || 1));
            },
            
            // Create a single block object
            createBlock(x, y, hp, col = 0) {
                const { blockWidth } = this.getBlockDimensions();
                return {
                    x: x,
                    y: y,
                    width: blockWidth,
                    height: BLOCK_HEIGHT,
                    hp: hp,
                    maxHp: hp,
                    hitAnimationTime: 0,
                    hitAnimationDuration: 0.15,
                    vibrationIntensity: 0,
                    col: col,
                    slot: 0
                };
            },
            
            // Create a row of blocks at a given Y position with a specific fill rate
            createRow(targetY, fillRate) {
                const { blocksPerRow, blockWidth } = this.getBlockDimensions();
                const baseHp = this.getBaseHp();
                const layout = generateBlockLayout(blocksPerRow, fillRate);
                const newRow = [];
                
                for (let i = 0; i < blocksPerRow; i++) {
                    if (layout[i]) {
                        const x = BLOCK_GAP + i * (blockWidth + BLOCK_GAP);
                        newRow.push(this.createBlock(x, targetY, baseHp, i));
                    }
                }
                
                return newRow;
            }
        };
        
        // Spawn a new row of blocks at the bottom
        function spawnBlockRow(targetY, forceMonolith = false) {
            // Default targetY to BLOCK_START_Y if not provided
            if (targetY === undefined) {
                targetY = BLOCK_START_Y;
            }
            
            // 1. Get Fill Rate from bucket
            let fillRate = 1.0; // Default to 100%
            
            if (!forceMonolith) {
                // Initialize bucket if needed
                if (!window.fillRateBucket || window.fillRateBucket.length === 0) {
                    window.fillRateBucket = initializeFillRateBucket();
                }
                
                // Pop from bucket
                fillRate = window.fillRateBucket.pop();
            }

            // 2. Use BlockFactory to create the row
            const newRow = BlockFactory.createRow(targetY, fillRate);
            blocks.push(...newRow);
        }
        
        // Move all blocks up by one row height with smooth animation
        // Uses slot-based collision propagation: blocks only move when physically pushed
        // For rows 1-8: entire rows move together (slots 0-7)
        // For row 9+: individual bricks move only when pushed by bricks below them
        function advanceBlocks() {
    const { blocksPerRow } = BlockFactory.getBlockDimensions();
    const rowHeight = BLOCK_HEIGHT + BLOCK_GAP;
    const bottomBoundary = BLOCK_START_Y;
    const LEGACY_THRESHOLD = 7; 

    // 1. Calculate how many rows to spawn 
    const occupiedSlots = new Set();
    for (const b of blocks) {
        const s = Math.round((bottomBoundary - b.y) / rowHeight);
        b.slot = s;
        occupiedSlots.add(s);
    }
    
    let occupiedInSpawnZone = 0;
    for (let i = 0; i <= LEGACY_THRESHOLD; i++) {
        if (occupiedSlots.has(i)) occupiedInSpawnZone++;
    }
    let rowsToSpawn = Math.max(1, 8 - occupiedInSpawnZone);

    // 2. Process each column as a physical stack
    for (let c = 0; c < blocksPerRow; c++) {
        // Get all active blocks in this column
        let colBlocks = blocks.filter(b => b.col === c && !b.markedForDeletion);
        
        // Sort them bottom-to-top based on current position
        colBlocks.sort((a, b) => a.slot - b.slot);

        // Step A: Apply the Piston Move (Legacy Zone)
        // Bricks in 0-8 always move up by rowsToSpawn
        for (let b of colBlocks) {
            b.animationStartSlot = b.slot; // Store for smooth sliding
            if (b.slot <= LEGACY_THRESHOLD) {
                b.slot += rowsToSpawn;
            }
        }

        // Step B: Resolve Collisions (Individual Zone)
        // THE FIX: frontier starts at rowsToSpawn - 1 (the top of incoming blocks)
        // This ensures that even empty columns get pushed by the incoming floor
        let frontier = rowsToSpawn - 1;
        
        for (let i = 0; i < colBlocks.length; i++) {
            let curr = colBlocks[i];
            
            // CRITICAL RULE: If the block is at or below the frontier...
            if (curr.slot <= frontier) {
                // ...the block is PUSHED to the next available slot.
                curr.slot = frontier + 1;
            }
            // Update frontier to this block's position for the next brick
            frontier = curr.slot;
        }
    }

    // 3. Final Check: Game Over
    for (const block of blocks) {
        if (block.slot >= 15) {
            triggerGameOver();
            return;
        }
    }

    // 4. Generate New Blocks for the bottom slots
    const newBlocks = [];
    for (let i = 0; i < rowsToSpawn; i++) {
        const baseHp = calculateCumulativeBaseHp();
        const targetSlot = i;
        const startSlot = i - rowsToSpawn; 

        if (!window.fillRateBucket || window.fillRateBucket.length === 0) {
            window.fillRateBucket = initializeFillRateBucket();
        }
        const fillRate = window.fillRateBucket.pop();
        const layout = generateBlockLayout(blocksPerRow, fillRate);
        const { blockWidth } = BlockFactory.getBlockDimensions();

        for (let j = 0; j < blocksPerRow; j++) {
            if (layout[j]) {
                newBlocks.push({
                    x: BLOCK_GAP + j * (blockWidth + BLOCK_GAP),
                    y: bottomBoundary - (startSlot * rowHeight),
                    width: blockWidth,
                    height: BLOCK_HEIGHT,
                    hp: baseHp,
                    maxHp: baseHp,
                    hitAnimationTime: 0.15,
                    hitAnimationDuration: 0.15,
                    vibrationIntensity: 0,
                    slot: targetSlot,
                    col: j,
                    animationStartSlot: startSlot
                });
            }
        }
    }
    
    blockAdvanceAnimation = {
        startTime: null,
        duration: 0.4,
        rowHeight: rowHeight,
        bottomBoundary: bottomBoundary,
        newBlocks: newBlocks
    };

    updateScoreDisplay(false);
}
        
        // Play skill discovery sound
        function playSkillDiscoverySound() {
            if (!audioContext || !skillDiscoveryBuffer) return;
            
            try {
                const source = audioContext.createBufferSource();
                source.buffer = skillDiscoveryBuffer;
                const gainNode = audioContext.createGain();
                gainNode.gain.value = 1.0; // 100% volume
                source.connect(gainNode);
                gainNode.connect(audioContext.destination);
                source.start(0);
            } catch (e) {
                // Silently fail if audio playback fails
            }
        }
        
        // Play upgrade applied sound
        function playUpgradeAppliedSound() {
            if (!audioContext || !upgradeAppliedBuffer) return;
            
            try {
                const source = audioContext.createBufferSource();
                source.buffer = upgradeAppliedBuffer;
                const gainNode = audioContext.createGain();
                gainNode.gain.value = 1.0; // 100% volume - increased for better audibility
                source.connect(gainNode);
                gainNode.connect(audioContext.destination);
                source.start(0);
            } catch (e) {
                // Silently fail if audio playback fails
            }
        }
        
        // ============================================================
        // SCARCITY & BRACKET SYSTEM (9-Turn Cycle with Act-Based Scheduling)
        // ============================================================
        const SkillDeckManager = {
            deck: [],
            currentTurn: 1,
            specialSchedule: { act1: 0, act2: 0, act3: 0 },
            currentHand: [],
            isFirstSelection: true, // Permanent flag for the first ever turn
            
            // Internal Pools
            pools: {
                commons: [],
                rares: [],
                epic: []
            },

            // Skill Definitions
            manifest: {
                commons: ['damage', 'critical', 'remote', 'bomb', 'insta_kill'],
                rares: ['projectile', 'burning_bricks'], // Left: projectile, Right: burning_bricks
                epic: 'stacking_damage'
            },

            /**
             * Resets the entire 18-card manifest and generates a new drop schedule.
             * @param {boolean} shouldShowRareTutorial - Whether to force rare tutorial on Turn 1
             */
            initDeck(shouldShowRareTutorial = false) {
                this.currentTurn = 1;
                
                // 1. Rebuild Common Pool (15 cards: 5 types × 3 copies each)
                this.pools.commons = [];
                this.manifest.commons.forEach(id => {
                    for(let i = 0; i < 3; i++) this.pools.commons.push(id);
                });

                // 2. Rebuild Rare Pool (2 cards: 2 types × 1 copy each)
                this.pools.rares = [...this.manifest.rares];
                this.shuffle(this.pools.rares);

                // 3. Rebuild Epic Pool (1 card)
                this.pools.epic = [this.manifest.epic];

                // 4. Generate Act Schedule (Pre-calculate special drops)
                // CRITICAL FIX: If showing rare tutorial, FORCE Act I special to be Turn 2 or 3 ONLY
                // Turn 1 is reserved for the tutorial override, so the Rare must appear later in Act I
                if (shouldShowRareTutorial) {
                    this.specialSchedule.act1 = Math.floor(Math.random() * 2) + 2; // 2 or 3 (NOT 1)
                } else {
                    this.specialSchedule.act1 = Math.floor(Math.random() * 3) + 1; // 1-3
                }
                
                this.specialSchedule.act2 = Math.floor(Math.random() * 3) + 4; // 4-6
                this.specialSchedule.act3 = Math.floor(Math.random() * 3) + 7; // 7-9

                this.shuffle(this.pools.commons);
                lib.log("--- New 9-Turn Scarcity Cycle Initialized ---");
                lib.log(`Act Schedule: Act1=${this.specialSchedule.act1}, Act2=${this.specialSchedule.act2}, Act3=${this.specialSchedule.act3}`);
                lib.log(`Commons Pool: ${this.pools.commons.length} cards`);
                lib.log(`Rares Pool: ${this.pools.rares.length} cards`);
                lib.log(`Epic Pool: ${this.pools.epic.length} cards`);
            },

            shuffle(array) {
                for (let i = array.length - 1; i > 0; i--) {
                    const j = Math.floor(Math.random() * (i + 1));
                    [array[i], array[j]] = [array[j], array[i]];
                }
            },

            /**
             * Pulls a common skill while preventing future duplicate deadlocks.
             * Uses frequency balancing to prioritize types with more copies remaining.
             * @param {string} excludeId - Prevents drawing the same ID as Slot 1.
             */
            pullSmartCommon(excludeId = null) {
                if (this.pools.commons.length === 0) return null; // Logic needs to handle null
                
                const counts = {};
                this.pools.commons.forEach(id => counts[id] = (counts[id] || 0) + 1);
                
                let candidates = [...new Set(this.pools.commons)];
                if (excludeId) candidates = candidates.filter(id => id !== excludeId);

                // If the only commons left are the excluded ID, just take the excluded ID
                if (candidates.length === 0) {
                    return this.pools.commons.splice(0, 1)[0];
                }

                candidates.sort((a, b) => counts[b] - counts[a]);

                const chosenId = candidates[0];
                const index = this.pools.commons.indexOf(chosenId);
                return this.pools.commons.splice(index, 1)[0];
            },

            // NEW HELPER: Scavenges ANY card left in the deck if the specific pool is empty
            scavengeAnything() {
                if (this.pools.commons.length > 0) return this.pullSmartCommon();
                if (this.pools.rares.length > 0) return this.pools.rares.splice(0, 1)[0];
                if (this.pools.epic.length > 0) return this.pools.epic.splice(0, 1)[0];
                return null;
            },

            /**
             * Serves 2 skills and permanently consumes them from the pools.
             * Implements the bracket system with guaranteed rarity drops.
             * On special turns: ONE slot gets special (Rare/Epic), OTHER slot gets Common.
             * 50/50 coin flip decides which slot gets the special skill.
             */
            drawTwo() {
                // RESET: If we've completed 9 turns, start a new cycle
                if (this.currentTurn > 9) {
                    this.initDeck(false); // Never force rare tutorial again after first cycle
                }

                let s1, s2;

                // --- 1. FIRST SKILL TUTORIAL OVERRIDE ---
                if (!hasSeenFirstSkillTutorial && this.currentTurn === 1) {
                    s1 = 'bomb';
                    s2 = 'remote';
                    
                    const bIdx = this.pools.commons.indexOf('bomb');
                    if (bIdx !== -1) this.pools.commons.splice(bIdx, 1);
                    const rIdx = this.pools.commons.indexOf('remote');
                    if (rIdx !== -1) this.pools.commons.splice(rIdx, 1);
                    
                    this.currentHand = [s1, s2];
                    return this.currentHand;
                }

                // --- 2. DETERMINE IF THIS IS A SPECIAL TURN ---
                const isSpecialTurn = (
                    this.currentTurn === this.specialSchedule.act1 ||
                    this.currentTurn === this.specialSchedule.act2 ||
                    this.currentTurn === this.specialSchedule.act3
                );

                if (isSpecialTurn) {
                    // On special turns: ONE slot gets special, OTHER slot gets common
                    // 50/50 coin flip decides which slot gets the special skill
                    const specialInSlot1 = Math.random() < 0.5;
                    
                    if (specialInSlot1) {
                        // Slot 1 gets special, Slot 2 gets common
                        if (this.currentTurn <= 6) {
                            s1 = this.pools.rares.length > 0 ? this.pools.rares.splice(0, 1)[0] : this.pullSmartCommon();
                        } else {
                            s1 = this.pools.epic.length > 0 ? this.pools.epic.splice(0, 1)[0] : this.pullSmartCommon();
                        }
                        s2 = this.pullSmartCommon(s1);
                    } else {
                        // Slot 2 gets special, Slot 1 gets common
                        s1 = this.pullSmartCommon();
                        if (this.currentTurn <= 6) {
                            s2 = this.pools.rares.length > 0 ? this.pools.rares.splice(0, 1)[0] : this.pullSmartCommon(s1);
                        } else {
                            s2 = this.pools.epic.length > 0 ? this.pools.epic.splice(0, 1)[0] : this.pullSmartCommon(s1);
                        }
                    }
                } else {
                    // On non-special turns: both slots are common
                    s1 = this.pullSmartCommon();
                    s2 = this.pullSmartCommon(s1);
                }

                // --- 3. PREVENT SINGLE-CARD HANDS ---
                // If s1 or s2 are null (due to depletion), grab whatever is left in the deck
                if (s1 === null) s1 = this.scavengeAnything();
                if (s2 === null) s2 = this.scavengeAnything();

                this.currentHand = [s1, s2].filter(id => id !== null);
                
                lib.log(`Turn ${this.currentTurn}/9: Served [${this.currentHand.join(', ')}]`);
                return this.currentHand;
            },

            /**
             * Finalizes the turn. The unchosen card is permanently removed.
             * @param {string} chosenId - The ID selected by the player.
             */
            selectSkill(chosenId) {
                const deletedId = this.currentHand.find(id => id !== chosenId);
                
                lib.log(`Choice ${this.currentTurn}/9: Kept [${chosenId}], Burned [${deletedId}]`);
                this.currentTurn++;
                this.currentHand = [];
            }
        };

        // Skill selection system - SINGLE SOURCE OF TRUTH
        // Every skill ID is unique. Rarity and Weight are hard-coded here.
        const SKILLS_CONFIG = {
            insta_kill: { title: 'KILLSHOT\nBALL', rarity: 'Common', weight: 1.0, desc: '+0.2% chance to Instakill' },
            critical: { title: 'CRITICAL\nBALLS', rarity: 'Common', weight: 1.0, desc: '10% chance to deal X2 Extra Damage' },
            damage: { title: 'POWER\nBALL', rarity: 'Common', weight: 1.0, desc: 'X2 Multiplier to all Damage' },
            remote: { title: 'SNIPER\nSHOT', rarity: 'Common', weight: 1.0, desc: 'X Damage to a random brick' },
            bomb: { title: 'BOMB\nBALLS', rarity: 'Common', weight: 1.0, desc: 'X Damage to nearby Bricks' },
            burning_bricks: { title: 'BURNING\nBRICKS', rarity: 'Rare', weight: 0.5, desc: '1% burning at round start.' },
            projectile: { title: 'EXTRA\nBALL', rarity: 'Rare', weight: 0.5, desc: 'Extra Ball' },
            stacking_damage: { title: 'STACKING\nDAMAGE', rarity: 'Epic', weight: 0.25, desc: 'Gains more damage for each bounce' }
        };
        

        function addTutorialHand(overlay, skillCard) {
            // Load the tutorial hand asset
            const handAsset = lib.getAsset('tutorial_hand');
            if (!handAsset || !handAsset.url) {
                lib.log('Tutorial hand asset not found');
                return;
            }
            
            // Create hand container
            const handContainer = document.createElement('div');
            handContainer.style.cssText = `
                position: absolute;
                pointer-events: none;
                z-index: 1001;
            `;
            
            // Create hand image
            const handImg = document.createElement('img');
            handImg.src = handAsset.url;
            handImg.style.cssText = `
                width: 200px;
                height: 200px;
                object-fit: contain;
                filter: drop-shadow(0 0 8px rgba(255, 255, 255, 0.6));
                animation: tutorialHandPoint 1.5s ease-in-out infinite;
            `;
            
            // Add CSS animation for the pointing motion
            if (!document.getElementById('tutorial-hand-animation')) {
                const style = document.createElement('style');
                style.id = 'tutorial-hand-animation';
                style.textContent = `
                    @keyframes tutorialHandPoint {
                        0% {
                            transform: translateY(0) scale(1);
                            opacity: 0.8;
                        }
                        50% {
                            transform: translateY(-15px) scale(1.05);
                            opacity: 1;
                        }
                        100% {
                            transform: translateY(0) scale(1);
                            opacity: 0.8;
                        }
                    }
                `;
                document.head.appendChild(style);
            }
            
            handContainer.appendChild(handImg);
            overlay.appendChild(handContainer);
            
            // Position the hand to point at the skill card
            // We need to wait for the card to be rendered, then position the hand
            setTimeout(() => {
                const cardRect = skillCard.getBoundingClientRect();
                const overlayRect = overlay.getBoundingClientRect();
                
                // Position hand below the card, pointing upward
                handContainer.style.left = (cardRect.left - overlayRect.left + cardRect.width / 2 - 50) + 'px';
                handContainer.style.top = (cardRect.top - overlayRect.top + cardRect.height + 20) + 'px';
            }, 50);
        }
        
        function showSkillSelection() {
            skillSelectionActive = true;
            isAiming = false;
            
            // Play skill discovery sound
            playSkillDiscoverySound();
            
            // CAPTURE: Is this the rare tutorial (first skill selection showing projectile + burning_bricks)?
            // We'll determine this after drawing the skills
            
            // Create skill selection overlay
            const overlay = document.createElement('div');
            overlay.id = 'skill-selection-overlay';
            overlay.style.cssText = `
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(10, 14, 39, 0.95);
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                z-index: 1000;
                pointer-events: auto;
                padding: 20px;
                box-sizing: border-box;
            `;
            
            const title = document.createElement('div');
            title.style.cssText = `
                font-family: 'Fredoka', sans-serif;
                font-size: 45px;
                color: #ffffff;
                margin-bottom: 130px;
                letter-spacing: 1px;
                font-weight: 700;
            `;
            title.textContent = 'CHOOSE AN UPGRADE';
            overlay.appendChild(title);
            
            const skillsContainer = document.createElement('div');
            skillsContainer.style.cssText = `
                display: flex;
                flex-direction: row;
                gap: 30px;
                width: 100%;
                max-width: 700px;
                justify-content: center;
                flex-wrap: wrap;
            `;
            
            // NEW LOGIC: Get skills from the Deck Manager
            const selectedSkills = SkillDeckManager.drawTwo();
            
            // Check if this is the first skill tutorial (first selection showing bomb + remote)
            const isFirstSkillTutorial = !hasSeenFirstSkillTutorial && selectedSkills[0] === 'bomb' && selectedSkills[1] === 'remote';

            // Create skill cards
            selectedSkills.forEach((skillId, index) => {
                const isFirstSkill = index === 0;
                const card = createSkillCard(skillId, overlay, skillsContainer, isFirstSkill, isFirstSkillTutorial);
                skillsContainer.appendChild(card);
            });
            
            overlay.appendChild(skillsContainer);
            document.getElementById('game-container').appendChild(overlay);
        }
        
        function createSkillCard(skillId, overlay, skillsContainer, isFirstSkill = false, isFirstSkillTutorial = false) {
            // Get skill config
            const skillConfig = SKILLS_CONFIG[skillId];
            if (!skillConfig) return document.createElement('div');
            
            const rarity = skillConfig.rarity;
            
            // Determine rarity badge styling
            let rarityBgGradient = 'linear-gradient(180deg, #7dd3fc 0%, #4a9eff 100%)';
            let rarityTextColor = '#0a0e27';
            let cardBgGradient = 'linear-gradient(180deg, #4a9eff 0%, #2d5f8f 100%)';
            let cardBorderColor = '#00ffff';
            let cardGlowColor = 'rgba(0, 255, 255, 0.4)';
            let iconBgColor = 'rgba(0, 100, 150, 0.3)'; // Darker shade of cyan
            
            if (rarity === 'Rare') {
                rarityBgGradient = 'linear-gradient(180deg, #fbbf24 0%, #f59e0b 100%)';
                rarityTextColor = '#0a0e27';
                cardBgGradient = 'linear-gradient(180deg, #c084fc 0%, #a855f7 100%)';
                cardBorderColor = '#e879f9';
                cardGlowColor = 'rgba(232, 121, 249, 0.4)';
                iconBgColor = 'rgba(120, 40, 180, 0.3)'; // Darker shade of purple
            } else if (rarity === 'Epic') {
                rarityBgGradient = 'linear-gradient(180deg, #fcd34d 0%, #fbbf24 100%)';
                rarityTextColor = '#0a0e27';
                cardBgGradient = 'linear-gradient(180deg, #fcd34d 0%, #f59e0b 100%)';
                cardBorderColor = '#fbbf24';
                cardGlowColor = 'rgba(251, 191, 36, 0.4)';
                iconBgColor = 'rgba(180, 120, 0, 0.3)'; // Darker shade of gold
            }
            
            // Start with common card styling (hidden until animation completes)
            let initialCardBgGradient = 'linear-gradient(180deg, #4a9eff 0%, #2d5f8f 100%)';
            let initialCardBorderColor = 'rgba(0, 255, 255, 0.3)';
            let initialCardGlowColor = 'rgba(0, 255, 255, 0.3)';
            
            const card = document.createElement('div');
            card.style.cssText = `
                width: 275px;
                height: 412.5px;
                background: ${initialCardBgGradient};
                border: 3px solid ${initialCardBorderColor};
                border-radius: 16px;
                padding: 0;
                box-sizing: border-box;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: flex-start;
                text-align: center;
                cursor: pointer;
                transition: all 150ms;
                box-shadow: 0 0 25px ${initialCardGlowColor}, inset 0 1px 0 rgba(255, 255, 255, 0.2);
                position: relative;
                -webkit-user-select: none;
                user-select: none;
                -webkit-touch-callout: none;
                touch-action: manipulation;
                overflow: hidden;
            `;
            
            // Store the final styling to apply when animation completes
            card.finalCardBgGradient = cardBgGradient;
            card.finalCardBorderColor = cardBorderColor;
            card.finalCardGlowColor = cardGlowColor;
            
            // Skill name
            const skillName = document.createElement('div');
            skillName.style.cssText = `
                font-family: 'Fredoka', sans-serif;
                font-size: 33px;
                font-weight: bold;
                color: #1a1f3a;
                padding-top: 16px;
                padding-left: 16px;
                padding-right: 16px;
                padding-bottom: 0;
                letter-spacing: 0.5px;
                line-height: 1.1;
                height: 72px;
                display: flex;
                align-items: center;
                justify-content: center;
                text-align: center;
                white-space: pre-line;
                opacity: 0;
                transition: opacity 0.3s ease-out;
                flex-shrink: 0;
            `;
            
            // Icon container
            const iconContainer = document.createElement('div');
            iconContainer.style.cssText = `
                width: 218.75px;
                height: 218.75px;
                background: rgba(0, 0, 0, 0.2);
                border: none;
                border-radius: 12px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-top: 12px;
                margin-bottom: 0;
                position: relative;
                overflow: hidden;
                flex-shrink: 0;
            `;
            
            // Description
            const description = document.createElement('div');
            description.style.cssText = `
                font-family: 'Inter', sans-serif;
                font-size: 22px;
                color: #1a1f3a;
                line-height: 1.3;
                padding: 12px 16px;
                font-weight: 600;
                opacity: 0;
                transition: opacity 0.3s ease-out;
                flex-grow: 1;
                display: flex;
                align-items: flex-start;
                justify-content: center;
            `;
            
            // Determine icon asset ID based on skill ID
            const iconAssetMap = {
                'insta_kill': 'skill_icon_insta_kill',
                'critical': 'skill_icon_critical',
                'damage': 'skill_icon_damage',
                'remote': 'skill_icon_remote',
                'bomb': 'skill_icon_bomb',
                'burning_bricks': 'skill_icon_burning_bricks',
                'projectile': 'skill_icon_projectile',
                'stacking_damage': 'skill_icon_stacking_damage'
            };
            
            let skillNameText = skillConfig.title;
            let skillDescription = skillConfig.desc;
            let iconAssetId = iconAssetMap[skillId] || 'skill_icon_damage';
            
            // Special handling for skills that show upgrade level
            if (skillId === 'bomb') {
                // Bomb damage: use Fibonacci formula
                // Show the damage this upgrade will provide (next level)
                const currentBombLevel = playerUpgrades.bombLevel || 0;
                const nextBombDamage = getFibonacciDamage(currentBombLevel);
                skillDescription = `${nextBombDamage} Damage to nearby Bricks`;
            } else if (skillId === 'remote') {
                // Sniper Shot damage: use Fibonacci formula
                // Show the damage this upgrade will provide (next level)
                const currentRemoteLevel = playerUpgrades.remoteLevel || 0;
                const nextRemoteDamage = getFibonacciDamage(currentRemoteLevel);
                skillDescription = `${nextRemoteDamage} Damage to a random brick`;
            } else if (skillId === 'burning_bricks') {
                // Burning Bricks damage: 1%, 2%, 3%, etc. (max 50%)
                const nextBurningDamagePercent = 1 + (playerUpgrades.burningBricksDamage) * 1;
                skillDescription = `${nextBurningDamagePercent}% Damage to all bricks`;
            } else if (skillId === 'stacking_damage') {
                const nextStackingDamage = playerUpgrades.stackingDamage + 1;
                skillDescription = `+${nextStackingDamage} Damage per Bounce`;
            } else if (skillId === 'critical') {
                const nextMultiplier = playerUpgrades.criticalMultiplier + 1;
                skillDescription = `X${nextMultiplier} Multiplier`;
            } else if (skillId === 'insta_kill') {
                // Show 0.2% increments to match the logic (capped at 5%)
                // Base is 0.1%, each upgrade adds 0.2%
                const nextInstaKillPercent = Math.min((playerUpgrades.instaKillChance + 1) * 0.2, 5);
                skillDescription = `+${nextInstaKillPercent.toFixed(1)}% Instakill Chance`;
            } else if (skillId === 'damage') {
                // Power Ball shows total damage balls will deal after this upgrade
                // Use Fibonacci formula with incremented level
                const currentLevel = playerUpgrades.extraDamage;
                const nextTotalDamage = getFibonacciDamage(currentLevel + 1);
                skillDescription = `Balls deal ${nextTotalDamage} Damage`;
            }
            
            skillName.textContent = skillNameText;
            description.textContent = skillDescription;
            
            skillName.textContent = skillNameText;
            description.textContent = skillDescription;
            
            // Load and display icon
            const iconAsset = lib.getAsset(iconAssetId);
            if (iconAsset && iconAsset.url) {
                const iconImg = document.createElement('img');
                iconImg.src = iconAsset.url;
                iconImg.style.cssText = `
                    width: 171.875px;
                    height: 171.875px;
                    object-fit: contain;
                    filter: drop-shadow(0 0 8px rgba(0, 255, 255, 0.4));
                `;
                iconContainer.appendChild(iconImg);
            } else {
                // Fallback: colored circle
                iconContainer.style.background = 'rgba(0, 255, 255, 0.2)';
                const fallback = document.createElement('div');
                fallback.style.cssText = `
                    width: 100px;
                    height: 100px;
                    background: #00ffff;
                    border-radius: 50%;
                    opacity: 0.5;
                `;
                iconContainer.appendChild(fallback);
            }
            
            // Assemble card
            card.appendChild(skillName);
            card.appendChild(iconContainer);
            card.appendChild(description);
            
            // Start slot machine animation
            let isAnimationComplete = false;
            const allSkillIds = Object.keys(SKILLS_CONFIG);
            const animationDuration = isFirstSkill ? 1.0 : 0.95; // First card: 1s, second: 0.95s
            const animationStartTime = performance.now() / 1000;
            
            const animateSlotMachine = () => {
                const currentTime = performance.now() / 1000;
                const elapsed = currentTime - animationStartTime;
                const progress = Math.min(elapsed / animationDuration, 1);
                
                if (progress < 1) {
                    // Still animating - cycle through random icons
                    const randomSkillId = allSkillIds[Math.floor(Math.random() * allSkillIds.length)];
                    const randomAssetId = iconAssetMap[randomSkillId] || 'skill_icon_damage';
                    const randomAsset = lib.getAsset(randomAssetId);
                    
                    // Clear icon container and show random icon
                    iconContainer.innerHTML = '';
                    if (randomAsset && randomAsset.url) {
                        const randomImg = document.createElement('img');
                        randomImg.src = randomAsset.url;
                        randomImg.style.cssText = `
                            width: 171.875px;
                            height: 171.875px;
                            object-fit: contain;
                            filter: drop-shadow(0 0 8px rgba(0, 255, 255, 0.4));
                        `;
                        iconContainer.appendChild(randomImg);
                    }
                    
                    requestAnimationFrame(animateSlotMachine);
                } else {
                    // Animation complete - show final icon and text
                    isAnimationComplete = true;
                    iconContainer.innerHTML = '';
                    
                    // Reveal the card's true colors now that animation is done
                    revealCard();
                    
                    if (iconAsset && iconAsset.url) {
                        const finalIconImg = document.createElement('img');
                        finalIconImg.src = iconAsset.url;
                        finalIconImg.style.cssText = `
                            width: 171.875px;
                            height: 171.875px;
                            object-fit: contain;
                            filter: drop-shadow(0 0 8px rgba(0, 255, 255, 0.4));
                        `;
                        iconContainer.appendChild(finalIconImg);
                    } else {
                        iconContainer.style.background = 'rgba(0, 255, 255, 0.2)';
                        const fallback = document.createElement('div');
                        fallback.style.cssText = `
                            width: 125px;
                            height: 125px;
                            background: #00ffff;
                            border-radius: 50%;
                            opacity: 0.5;
                        `;
                        iconContainer.appendChild(fallback);
                    }
                    
                    // Fade in title and description
                    skillName.style.opacity = '1';
                    description.style.opacity = '1';
                    
                    // Add tutorial hand ONLY for the first skill card during the rare tutorial
                    if (isFirstSkill && isFirstSkillTutorial) {
                        addTutorialHand(overlay, card);
                    }
                }
            };
            
            // Start animation
            requestAnimationFrame(animateSlotMachine);
            
            // Function to reveal the card's true colors
            const revealCard = () => {
                card.style.background = card.finalCardBgGradient;
                card.style.borderColor = card.finalCardBorderColor;
                card.style.boxShadow = `0 0 25px ${card.finalCardGlowColor}, inset 0 1px 0 rgba(255, 255, 255, 0.2)`;
            };
            
            // Click handler
            const handleSelection = async () => {
                // 1. Notify the Deck Manager
                SkillDeckManager.selectSkill(skillId);

                // 2. Apply the actual skill benefits
                applySkill(skillId);
                playUpgradeAppliedSound();
                overlay.remove();
                skillSelectionActive = false;

                // --- LOGIC FIX START ---
                // Check if this was a first skill tutorial session BEFORE we start the next round
                const completingFirstSkillTutorial = isFirstSkillTutorial;

                // Reset skill indicator lights to EMPTY after skill selection
                // The LED will only light up again when the player fires
                const led = document.getElementById('skill-led');
                if (led) {
                    led.classList.remove('red', 'yellow', 'green');
                }
                previousLedState = null; // Reset LED state tracker

                // Transition to the next round
                startNewRound();

                // If we were completing the first skill tutorial, mark it as finished and save
                if (completingFirstSkillTutorial) {
                    hasSeenFirstSkillTutorial = true; // Set local state immediately
                    hasSeenFirstSkillSelection = true; // Mark skill selection as seen too
                    try {
                        // Save to persistent storage
                        await lib.saveUserGameState({
                            hasSeenFirstSkillSelection: true,
                            hasSeenGameplayTutorial: hasSeenGameplayTutorial,
                            hasSeenFirstSkillTutorial: true
                        });
                        lib.log('First skill tutorial completion saved successfully');
                    } catch (error) {
                        lib.log(`Failed to save first skill tutorial state: ${error.message}`);
                    }
                }
                // --- LOGIC FIX END ---
            };
            
            // Track whether this card is currently being pressed
            let isCardPressed = false;
            
            // Mouse handlers with drag-away detection
            card.addEventListener('mouseenter', () => {
                if (!isCardPressed && isAnimationComplete) {
                    card.style.transform = 'scale(1.08)';
                    card.style.boxShadow = `0 0 35px ${cardGlowColor.replace('0.4', '0.6')}, inset 0 1px 0 rgba(255, 255, 255, 0.2)`;
                }
            });
            
            card.addEventListener('mouseleave', () => {
                if (!isCardPressed && isAnimationComplete) {
                    card.style.transform = 'scale(1)';
                    card.style.boxShadow = `0 0 25px ${cardGlowColor}, inset 0 1px 0 rgba(255, 255, 255, 0.2)`;
                }
            });
            
            card.addEventListener('mousedown', (e) => {
                if (!isAnimationComplete) return;
                e.preventDefault();
                e.stopPropagation();
                isCardPressed = true;
                card.style.transform = 'scale(0.95)';
            });
            
            card.addEventListener('mouseup', (e) => {
                if (!isAnimationComplete) return;
                e.preventDefault();
                e.stopPropagation();
                if (isCardPressed) {
                    isCardPressed = false;
                    card.style.transform = 'scale(1.08)';
                    handleSelection();
                }
            });
            
            card.addEventListener('mouseleave', () => {
                if (isCardPressed && isAnimationComplete) {
                    isCardPressed = false;
                    card.style.transform = 'scale(1)';
                    card.style.boxShadow = `0 0 25px ${cardGlowColor}, inset 0 1px 0 rgba(255, 255, 255, 0.2)`;
                }
            });
            
            // Touch handlers with drag-away detection
            let isTouchPressed = false;
            
            card.addEventListener('touchstart', (e) => {
                if (!isAnimationComplete) return;
                e.preventDefault();
                e.stopPropagation();
                isTouchPressed = true;
                card.style.transform = 'scale(0.95)';
            });
            
            card.addEventListener('touchmove', (e) => {
                if (!isAnimationComplete) return;
                e.preventDefault();
                e.stopPropagation();
                
                // Check if touch is still over the card
                const touch = e.touches[0];
                const rect = card.getBoundingClientRect();
                const isStillOver = touch.clientX >= rect.left && 
                                   touch.clientX <= rect.right && 
                                   touch.clientY >= rect.top && 
                                   touch.clientY <= rect.bottom;
                
                if (!isStillOver && isTouchPressed) {
                    // Finger moved away from card - deselect it
                    isTouchPressed = false;
                    card.style.transform = 'scale(1)';
                    card.style.boxShadow = `0 0 25px ${cardGlowColor}, inset 0 1px 0 rgba(255, 255, 255, 0.2)`;
                } else if (isStillOver && !isTouchPressed) {
                    // Finger moved back over card - reselect it
                    isTouchPressed = true;
                    card.style.transform = 'scale(0.95)';
                }
            });
            
            card.addEventListener('touchend', (e) => {
                if (!isAnimationComplete) return;
                e.preventDefault();
                e.stopPropagation();
                
                if (isTouchPressed) {
                    // Only select if finger was still over the card when released
                    isTouchPressed = false;
                    card.style.transform = 'scale(1)';
                    handleSelection();
                } else {
                    // Finger was dragged away - just reset the card
                    card.style.transform = 'scale(1)';
                }
            });
            
            card.addEventListener('touchcancel', (e) => {
                if (!isAnimationComplete) return;
                e.preventDefault();
                e.stopPropagation();
                isTouchPressed = false;
                card.style.transform = 'scale(1)';
                card.style.boxShadow = `0 0 25px ${cardGlowColor}, inset 0 1px 0 rgba(255, 255, 255, 0.2)`;
            });
            
            return card;
        }
        
        function applySkill(skillId) {
            switch(skillId) {
                case 'projectile':
                    playerUpgrades.numProjectiles++;
                    break;
                case 'damage':
                    playerUpgrades.extraDamage++;
                    // Ball damage now uses Fibonacci: Level 0=1, Level 1=2, Level 2=3, Level 3=5, etc.
                    playerUpgrades.calculatedBallDamage = getFibonacciDamage(playerUpgrades.extraDamage);
                    break;
                case 'critical':
                    // Only increment the multiplier, NOT the chance
                    // Trigger chance always stays at 10%
                    playerUpgrades.criticalMultiplier++;
                    break;
                case 'remote':
                    playerUpgrades.remoteLevel = (playerUpgrades.remoteLevel || 0) + 1;
                    // Store the damage value using Fibonacci (Level 1 = 1, Level 2 = 2, Level 3 = 3, Level 4 = 5, etc.)
                    playerUpgrades.remoteProjectileDamage = getFibonacciDamage(playerUpgrades.remoteLevel - 1);
                    break;
                case 'bomb':
                    playerUpgrades.bombLevel = (playerUpgrades.bombLevel || 0) + 1;
                    // Store the damage value using Fibonacci (Level 1 = 1, Level 2 = 2, Level 3 = 3, Level 4 = 5, etc.)
                    playerUpgrades.bombDamage = getFibonacciDamage(playerUpgrades.bombLevel - 1);
                    break;
                case 'burning_bricks':
                    playerUpgrades.burningBricksDamage++;
                    // Do NOT apply damage here - it will be applied at the start of the next round
                    // during updateBlockAdvanceAnimation()
                    break;
                case 'insta_kill':
                    playerUpgrades.instaKillChance++;
                    break;
                case 'stacking_damage':
                    playerUpgrades.stackingDamage++;
                    break;
            }
            
        }
        
        // Show gameplay tutorial (TAP TO SHOOT)
        // Show gameplay tutorial (TAP TO SHOOT) - appears during gameplay
        function showGameplayTutorial() {
            gameplayTutorialActive = true;
            
            // Create tutorial overlay - NO dark background, semi-transparent
            const overlay = document.createElement('div');
            overlay.id = 'gameplay-tutorial-overlay';
            overlay.style.cssText = `
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: transparent;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                z-index: 1500;
                pointer-events: auto;
            `;
            
            // Create content container
            const content = document.createElement('div');
            content.style.cssText = `
                position: relative;
                width: 100%;
                height: 100%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                pointer-events: none;
            `;
            
            // Add "TAP TO SHOOT" text
            const text = document.createElement('div');
            text.style.cssText = `
                font-family: 'Fredoka', sans-serif;
                font-size: 48px;
                color: #ffffff;
                font-weight: 700;
                letter-spacing: 2px;
                margin-bottom: 60px;
                text-shadow: 0 0 20px rgba(0, 255, 255, 0.6);
                pointer-events: none;
            `;
            text.textContent = 'TAP TO SHOOT';
            content.appendChild(text);
            
            // Create dotted line container
            const lineContainer = document.createElement('div');
            lineContainer.style.cssText = `
                position: relative;
                width: 300px;
                height: 100px;
                display: flex;
                align-items: center;
                pointer-events: none;
            `;
            
            // Create dotted line using repeated dashes
            const line = document.createElement('div');
            line.style.cssText = `
                position: absolute;
                top: 50%;
                left: 0;
                width: 100%;
                height: 4px;
                background-image: linear-gradient(to right, #ffffff 50%, transparent 50%);
                background-size: 20px 4px;
                background-repeat: repeat-x;
                transform: translateY(-50%);
            `;
            lineContainer.appendChild(line);
            
            // Load and add tutorial hand
            const handAsset = lib.getAsset('tutorial_hand');
            if (handAsset && handAsset.url) {
                const handImg = document.createElement('img');
                handImg.src = handAsset.url;
                handImg.style.cssText = `
                    position: absolute;
                    top: 50%;
                    left: 0;
                    width: 200px;
                    height: 200px;
                    object-fit: contain;
                    animation: gameplayHandSlide 2s ease-in-out infinite;
                    transform: translateY(-50%);
                    pointer-events: none;
                `;
                lineContainer.appendChild(handImg);
                
                // Add CSS animation for sliding motion (left to right)
                if (!document.getElementById('gameplay-hand-animation')) {
                    const style = document.createElement('style');
                    style.id = 'gameplay-hand-animation';
                    style.textContent = `
                        @keyframes gameplayHandSlide {
                            0% {
                                left: 0;
                            }
                            50% {
                                left: calc(100% - 100px);
                            }
                            100% {
                                left: 0;
                            }
                        }
                    `;
                    document.head.appendChild(style);
                }
            }
            
            content.appendChild(lineContainer);
            overlay.appendChild(content);
            
            // Handle tap/click to dismiss
            const handleDismiss = async () => {
                // Immediately disable tutorial so fireBall() can execute
                gameplayTutorialActive = false;
                overlay.remove();
                hasSeenGameplayTutorial = true;
                
                // Fire the ball on the same tap
                fireBall();
                
                // Save both tutorial states together
                try {
                    await lib.saveUserGameState({
                        hasSeenFirstSkillSelection: hasSeenFirstSkillSelection,
                        hasSeenGameplayTutorial: true
                    });
                    lib.log('Gameplay tutorial completion saved successfully');
                } catch (error) {
                    lib.log(`Failed to save gameplay tutorial state: ${error.message}`);
                    // Game continues even if save fails
                }
            };
            
            overlay.addEventListener('click', handleDismiss);
            overlay.addEventListener('touchend', (e) => {
                e.preventDefault();
                handleDismiss();
            });
            
            document.getElementById('game-container').appendChild(overlay);
        }
        
        // Fire the ball
        // Fire the ball
// Fire the ball
function fireBall() {
    if (!ball.inCannon || gameOver || currentMode === 'edit' || skillSelectionActive || !cannonCanFire) return;
    
    // Dismiss gameplay tutorial if active
    if (gameplayTutorialActive) {
        gameplayTutorialActive = false;
        const tutorialOverlay = document.getElementById('gameplay-tutorial-overlay');
        if (tutorialOverlay) {
            tutorialOverlay.remove();
        }
    }

    ballsPending = playerUpgrades.numProjectiles;
    isFiringSequence = true;
    ball.inCannon = false;
    hasFiredFirstShot = true;

    // LIGHT UP THE SKILL INDICATORS NOW (Update to next color in cycle)
    updateSkillIndicator(false);

    // Fire the very first ball immediately
    executeSequentialShot();
}

// This handles a single shot + recoil trigger
function executeSequentialShot() {
    const config = window.gameConfig;
    const velocity = config.physics.ballVelocity;
    const muzzle = getMuzzlePosition();

    // Calculate angle with slight deviation
    const maxDeviation = 5 * Math.PI / 180;
    const angleDeviation = (Math.random() - 0.5) * 2 * maxDeviation;
    const deviatedAngle = cannonAngle + angleDeviation;

    // Create and push exactly ONE ball
    balls.push({
        x: muzzle.x,
        y: muzzle.y,
        vx: Math.sin(deviatedAngle) * velocity,
        vy: Math.cos(deviatedAngle) * velocity,
        radius: config.physics.ballRadius,
        active: true,
        inCannon: false,
        distanceTraveled: 0,
        launchDistance: velocity,
        bounceCount: 0,
        stackingDamageBonus: 0,
        hasBouncedOnce: false
    });

    // Trigger Recoil
    cannonRecoil = 1;
    
    // Trigger muzzle flash effect
    triggerMuzzleFlash();
    
    // Play cannon shoot sound
    playCannonShootSound();
    
    ballsPending--;
}
        
        // Start a new round - central state machine transition
        function startNewRound() {
            // 1. Increment round FIRST (before advanceBlocks)
            currentRound++;
            
            // 2. RESET BRICK COUNTER FOR ROUND-BASED SCORING
            bricksDestroyedCount = 0;
            
            // 3. Trigger the block movement (The slide up)
            advanceBlocks();
            
            // 4. LOGIC REMOVED: Burning bricks handled by animation completion
            
            // 5. RESET CANNON
            cannonActive = true; 
            cannonCanFire = true;

            // 6. PRESERVE SKILL INDICATOR LIGHTS (Keep previous state, don't clear)
            updateSkillIndicator(true);
            
            // 7. SYNC UI
            updateScoreDisplay(false);
            
            // 8. Trigger trajectory reveal animation when cannon is loaded for new round
            triggerTrajectoryReveal();
        }
        
        // Return ball to cannon
        function returnBallToCannon() {
    const config = window.gameConfig;
    const offsetY = config.physics.projectileStartOffsetY || 100;
    ball.x = CANVAS_WIDTH / 2;
    ball.y = getCannonY() + CANNON_HEIGHT / 2 + offsetY;
    ball.vx = 0;
    ball.vy = 0;
    ball.active = false;
    ball.inCannon = true;
    
    // Clear all balls
    balls = [];
    
    // RESET SPEED MULTIPLIER when all balls are collected
    currentSpeedMultiplier = 1.0;
    
    // Enable cannon (extend it back into view)
    cannonActive = true;
    cannonRestTimer = 0; // Reset rest timer when re-enabling
    cannonRecoilTimer = 0; // Reset recoil timer
    cannonCanFire = true; // Allow firing again
    
    // Trigger trajectory reveal animation when ball returns to cannon
    triggerTrajectoryReveal();
    
    // --- TURN RESOLUTION LOGIC ---
    // Rule: Show skills after Round 1, then every N rounds based on skillSelectionFrequency
    // skillSelectionFrequency controls the interval (1, 2, 3, 4, or 5)
    const skillFrequency = config.difficulty.skillSelectionFrequency || 2;
    const isSkillRound = hasFiredFirstShot && ((currentRound - 1) % skillFrequency === 0);

    if (isSkillRound) {
        showSkillSelection(); 
        // Pause here. startNewRound() will be called by handleSelection inside the Skill Card.
    } else {
        startNewRound();
    }
}
        
        // Update damage text animations
        function updateDamageTexts(dt) {
            for (let i = damageTexts.length - 1; i >= 0; i--) {
                const text = damageTexts[i];
                text.time += dt;
                
                if (text.time >= text.totalDuration) {
                    damageTexts.splice(i, 1);
                }
            }
        }
        
        // Update CRIT text animations
        function updateCritTexts(dt) {
            for (let i = critTexts.length - 1; i >= 0; i--) {
                const critText = critTexts[i];
                critText.time += dt;
                
                if (critText.time >= 0.5) { // 500ms total
                    critTexts.splice(i, 1);
                }
            }
        }
        
        // Create insta-kill effect
        function createInstaKillEffect(blockX, blockY, blockWidth, blockHeight) {
            instaKillEffects.push({
                x: blockX + blockWidth / 2,
                y: blockY + blockHeight / 2,
                time: 0,
                duration: 0.6, // 600ms total
                scale: 0.5, // Start small
                alpha: 1
            });
        }
        
        // Update insta-kill effects
        function updateInstaKillEffects(dt) {
            for (let i = instaKillEffects.length - 1; i >= 0; i--) {
                const effect = instaKillEffects[i];
                effect.time += dt;
                
                if (effect.time >= effect.duration) {
                    instaKillEffects.splice(i, 1);
                }
            }
        }
        
        // Draw insta-kill effects
        function drawInstaKillEffects() {
            if (!assetCache.skill_icon_insta_kill) return;
            
            for (const effect of instaKillEffects) {
                const progress = effect.time / effect.duration;
                
                // Scale up from 0.5 to 1.2, then back down
                let scale = 0.5 + Math.sin(progress * Math.PI) * 0.7;
                
                // Fade out in the last 200ms
                let alpha = 1;
                if (effect.time > effect.duration - 0.2) {
                    const fadeProgress = (effect.time - (effect.duration - 0.2)) / 0.2;
                    alpha = 1 - fadeProgress;
                }
                
                ctx.save();
                ctx.globalAlpha = alpha;
                ctx.translate(effect.x, effect.y);
                ctx.scale(scale, scale);
                ctx.translate(-effect.x, -effect.y);
                
                const iconSize = 80;
                ctx.drawImage(
                    assetCache.skill_icon_insta_kill,
                    effect.x - iconSize / 2,
                    effect.y - iconSize / 2,
                    iconSize,
                    iconSize
                );
                
                ctx.restore();
            }
        }
        
        // Floating CRIT text that stays centered on brick
        let critTexts = [];
        
        // Insta-kill effect icons
        let instaKillEffects = [];
        
        // Update block animations
        function updateBlockAnimations(dt) {
            for (const block of blocks) {
                if (block.hitAnimationTime < block.hitAnimationDuration) {
                    block.hitAnimationTime += dt;
                }
            }
        }
        
        // Update block advancement animation
        // Update block advancement animation
        // Update block advancement animation
        function updateBlockAdvanceAnimation(dt) {
            if (!blockAdvanceAnimation) return;
            
            if (blockAdvanceAnimation.startTime === null) {
                blockAdvanceAnimation.startTime = performance.now() / 1000;
            }
            
            const elapsed = (performance.now() / 1000) - blockAdvanceAnimation.startTime;
            const progress = Math.min(elapsed / blockAdvanceAnimation.duration, 1);
            
            // Use an Easing function for a "juicier" feel (Optional, change to 'progress' for linear)
            const easeProgress = 1 - Math.pow(1 - progress, 3); // Ease out cubic

            const rowHeight = blockAdvanceAnimation.rowHeight;
            const bottomBoundary = blockAdvanceAnimation.bottomBoundary;
            
            // Smoothly interpolate existing blocks from their start slot to their target slot
            for (const block of blocks) {
                if (block.animationStartSlot !== undefined) {
                    const startY = bottomBoundary - (block.animationStartSlot * rowHeight);
                    const targetY = bottomBoundary - (block.slot * rowHeight);
                    
                    block.y = startY + (targetY - startY) * easeProgress;
                }
            }
            
            // Smoothly interpolate new blocks from their start slot to their target slot
            for (const newBlock of blockAdvanceAnimation.newBlocks) {
                const startY = bottomBoundary - (newBlock.animationStartSlot * rowHeight);
                const targetY = bottomBoundary - (newBlock.slot * rowHeight);
                
                newBlock.y = startY + (targetY - startY) * easeProgress;
            }
            
            if (progress >= 1) {
                // 1. Final Snap to grid - snap existing blocks to their final positions
                for (const block of blocks) {
                    block.y = bottomBoundary - (block.slot * rowHeight);
                    delete block.animationStartSlot;
                }
                
                // 2. Snap new blocks to their final positions
                for (const newBlock of blockAdvanceAnimation.newBlocks) {
                    newBlock.y = bottomBoundary - (newBlock.slot * rowHeight);
                    delete newBlock.animationStartSlot;
                }
                
                // 3. Add new blocks to the main blocks array (append, don't overwrite)
                blocks.push(...blockAdvanceAnimation.newBlocks);
                
                // 4. IMPORTANT: Kill the animation reference BEFORE applying damage
                blockAdvanceAnimation = null;
                
                // 5. NOW apply burning damage to the "snapped" bricks
                applyBurningBricksDamage();
                
                // 6. CHECK FOR GAME OVER ON INTEGERS (not pixels)
                for (const block of blocks) {
                    if (block.slot >= 15) { // Slot 15 is Row 16 (The limit line at 135px)
                        triggerGameOver();
                        return;
                    }
                }
            }
        }
        
        // Cleanup dead bricks at end of frame
        function cleanupDeadBricks(dt) {
            // Only remove blocks that are marked for deletion AND have finished their flash animation
            for (let i = blocks.length - 1; i >= 0; i--) {
                const b = blocks[i];
                if (b.markedForDeletion && b.hitAnimationTime >= b.hitAnimationDuration) {
                    blocks.splice(i, 1);
                }
            }
        }
        
        // Update all balls physics
        function updateBall(dt) {
    if (gameOver || skillSelectionActive) return;

    const config = window.gameConfig;
    const MAX_VELOCITY = 3500; // Terminal velocity cap (increased from 3000)
    
    // Update each ball
    for (let ballIndex = balls.length - 1; ballIndex >= 0; ballIndex--) {
        const ball = balls[ballIndex];
        
        if (!ball.active) continue;

        // HIGH-FREQUENCY SUB-STEPPING: Break frame into 15 micro-steps (increased from 12)
        const subSteps = 15; 
        const subDt = dt / subSteps;

        for (let s = 0; s < subSteps; s++) {
            // 1. GRAVITY: Apply with current speed multiplier
            ball.vy += (config.physics.gravity * currentSpeedMultiplier * subDt);
            
            // 2. VELOCITY GOVERNOR: Cap speed to prevent tunneling
            const currentSpeed = Math.sqrt(ball.vx * ball.vx + ball.vy * ball.vy);
            if (currentSpeed > MAX_VELOCITY) {
                const scale = MAX_VELOCITY / currentSpeed;
                ball.vx *= scale;
                ball.vy *= scale;
            }
            
            // 3. POSITION UPDATE
            ball.x += ball.vx * subDt;
            ball.y += ball.vy * subDt;

            // Track distance traveled
            const moveDist = Math.sqrt(ball.vx * ball.vx + ball.vy * ball.vy) * subDt;
            ball.distanceTraveled += moveDist;

            // 4. WALLS & CEILING (with depenetration)
            // Left Wall
            if (ball.x - ball.radius < 0) {
                ball.x = ball.radius; // Immediate depenetration
                ball.vx = Math.abs(ball.vx) * config.physics.bounceCoefficient;
            } 
            // Right Wall
            else if (ball.x + ball.radius > CANVAS_WIDTH) {
                ball.x = CANVAS_WIDTH - ball.radius; // Immediate depenetration
                ball.vx = -Math.abs(ball.vx) * config.physics.bounceCoefficient;
            }

            // Ceiling
            if (ball.y - ball.radius < 0) {
                ball.y = ball.radius; // Immediate depenetration
                ball.vy = Math.abs(ball.vy) * config.physics.bounceCoefficient;
            }

            // 5. BLOCK COLLISIONS (with sub-stepping precision)
            checkBlockCollisions(ball, config.physics.bounceCoefficient);
            
            // 6. BOTTOM EXIT
            if (ball.y - ball.radius > CANVAS_HEIGHT) {
                balls.splice(ballIndex, 1);
                
                // If all balls are gone, return to cannon
                if (balls.length === 0) {
                    returnBallToCannon();
                }
                return; 
            }
        }

        // 7. STUCK PREVENTION (Emergency only - should rarely trigger with sub-stepping)
        const totalSpeed = Math.sqrt(ball.vx * ball.vx + ball.vy * ball.vy);
        if (totalSpeed < 10) {
            ball.vy = 100;
        }
    }
}
        
        // ============================================================
        // EVENT DISPATCHER SYSTEM
        // ============================================================
        const eventDispatcher = {
            listeners: {},
            
            on(eventName, callback) {
                if (!this.listeners[eventName]) {
                    this.listeners[eventName] = [];
                }
                this.listeners[eventName].push(callback);
            },
            
            emit(eventName, data) {
                if (!this.listeners[eventName]) return;
                for (const callback of this.listeners[eventName]) {
                    callback(data);
                }
            }
        };
        
        // ============================================================
        // SOUND MANAGER
        // ============================================================
        const SoundManager = {
            init() {
                eventDispatcher.on('onBlockHit', (data) => this.handleBlockHit(data));
                eventDispatcher.on('onBlockDestroyed', (data) => this.handleBlockDestroyed(data));
            },
            
            handleBlockHit(data) {
                // ONLY play hit sound if the brick survived. 
                // If it died, onBlockDestroyed will handle the "Death" sound instead.
                if (data.block.hp > 0) {
                    playJellyPopSound();
                }
            },
            
            handleBlockDestroyed(data) {
                playBrickDestroySound();
            }
        };
        
        // ============================================================
        // VFX MANAGER
        // ============================================================
        const VFXManager = {
            init() {
                eventDispatcher.on('onBlockHit', (data) => this.handleBlockHit(data));
                eventDispatcher.on('onBlockDestroyed', (data) => this.handleBlockDestroyed(data));
            },
            
            handleBlockHit(data) {
                const { block, damage, isCritical } = data;
                
                // Trigger hit animation on block
                block.hitAnimationTime = 0;
                block.vibrationIntensity = isCritical ? 2 : 1;
                
                // Create floating damage text
                damageTexts.push({
                    x: block.x + block.width / 2,
                    y: block.y + block.height / 2,
                    damage: Math.floor(damage),
                    time: 0,
                    freezeTime: 0.3,
                    fadeDuration: 0.2,
                    totalDuration: 0.5,
                    isCritical: isCritical
                });
                
                // Create CRIT text if critical hit
                if (isCritical) {
                    critTexts.push({
                        x: block.x + block.width / 2,
                        y: block.y + block.height / 2,
                        time: 0
                    });
                }
            },
            
            handleBlockDestroyed(data) {
                const { block, isInstaKill } = data;
                
                // Spawn particle burst effect
                spawnBlockDestroyParticles(block.x, block.y, block.width, block.height);
                
                // Create insta-kill effect if applicable
                if (isInstaKill) {
                    createInstaKillEffect(block.x, block.y, block.width, block.height);
                }
            }
        };
        
        // ============================================================
        // SCORE MANAGER
        // ============================================================
        const ScoreManager = {
            init() {
                eventDispatcher.on('onBlockDestroyed', (data) => this.handleBlockDestroyed(data));
            },
            
            handleBlockDestroyed(data) {
                // DISABLED: Score is now calculated ONLY in dealDamageToBlock()
                // This prevents double-counting and ensures consistent +1 per brick combo scoring
            }
        };
        
        // ============================================================
        // SKILL MANAGER
        // ============================================================
        const SkillManager = {
            init() {
                eventDispatcher.on('onBlockHit', (data) => this.handleBlockHit(data));
            },
            
            handleBlockHit(data) {
                const { block, ball, isCritical, stackingBonus } = data;
                
                // Fire remote projectile if skill is active
                if (playerUpgrades.remoteProjectileDamage > 0) {
                    fireRemoteProjectile(ball.x, ball.y, stackingBonus || 0);
                }
                
                // Apply bomb damage to adjacent blocks if skill is active
                if (playerUpgrades.bombDamage > 0) {
                    applyBombDamage(block, stackingBonus || 0);
                }
            }
        };
        
        // Initialize all managers
        function initializeEventSystem() {
            SoundManager.init();
            VFXManager.init();
            ScoreManager.init();
            SkillManager.init();
        }
        
        // ============================================================
        // REFACTORED: Check ball-block collisions
        // Now only handles physics and emits events
        // ============================================================
                // ============================================================
        // REFACTORED: Check ball-block collisions
        // Now only handles physics and emits events
        // ============================================================
        function checkBlockCollisions(ball, bounceCoeff) {
    const config = window.gameConfig;

    for (let i = blocks.length - 1; i >= 0; i--) {
        const block = blocks[i];
        
        if (block.hp <= 0 || block.markedForDeletion) continue;
        
        // ============================================================
        // STEP 1: CLOSEST POINT SEARCH
        // Find the point on the brick's rectangle closest to the ball's center
        // ============================================================
        const closestX = Math.max(block.x, Math.min(ball.x, block.x + block.width));
        const closestY = Math.max(block.y, Math.min(ball.y, block.y + block.height));
        
        // ============================================================
        // STEP 2: OVERLAP CHECK (Magnitude)
        // Calculate distance from ball center to closest point
        // ============================================================
        const distanceX = ball.x - closestX;
        const distanceY = ball.y - closestY;
        const distanceSquared = (distanceX * distanceX) + (distanceY * distanceY);
        const distance = Math.sqrt(distanceSquared);

        if (distance < ball.radius) {
            // COLLISION DETECTED
            
            // ============================================================
            // STEP 3: TRUE POSITION CORRECTION (The Push-Out)
            // Calculate the normal vector (direction from closest point to ball center)
            // ============================================================
            let nx = 0, ny = 0;
            
            if (distance > 0.001) {
                // Normal case: calculate unit normal
                nx = distanceX / distance;
                ny = distanceY / distance;
            } else {
                // Ball center is exactly on the closest point (rare edge case)
                // Default to pushing up
                ny = -1;
            }
            
            // Depenetrate: Move ball along normal until distance equals radius + buffer
            const buffer = 0.1; // 0.1 pixel buffer
            const targetDistance = ball.radius + buffer;
            const pushDistance = targetDistance - distance;
            
            ball.x += nx * pushDistance;
            ball.y += ny * pushDistance;
            
            // ============================================================
            // STEP 4: DOT PRODUCT REFLECTION
            // Check if ball is moving toward the brick
            // ============================================================
            const dot = ball.vx * nx + ball.vy * ny;
            
            if (dot < 0) {
                // Ball is moving toward the surface - reflect it
                // Standard reflection formula: v = v - 2 * (v · n) * n
                ball.vx = (ball.vx - 2 * dot * nx) * bounceCoeff;
                ball.vy = (ball.vy - 2 * dot * ny) * bounceCoeff;
                
                // INCREMENT SPEED MULTIPLIER ON BOUNCE
                currentSpeedMultiplier += config.physics.speedAccelerationPerBounce;
                
                // SPEED MAINTENANCE
                const currentSpeed = Math.sqrt(ball.vx * ball.vx + ball.vy * ball.vy);
                const criticalSpeed = config.physics.ballVelocity * 0.2;
                
                if (currentSpeed < criticalSpeed) {
                    const factor = criticalSpeed / currentSpeed;
                    ball.vx *= factor;
                    ball.vy *= factor;
                }

                // Add horizontal variety if bounce is too vertical
                if (Math.abs(ball.vx) < 30) {
                    ball.vx += (Math.random() - 0.5) * 40;
                }
                
                // ========== CALCULATE DAMAGE ==========
                // Use central formula for ball damage
                const baseDamage = getCalculatedPower(playerUpgrades.extraDamage);
                let damage = baseDamage;
                
                // Track bounce count for stacking instakill chance
                if (!ball.bounceCount) {
                    ball.bounceCount = 0;
                }
                ball.bounceCount++;
                
                // Apply stacking damage (after first bounce)
                if (playerUpgrades.stackingDamage > 0) {
                    if (ball.hasBouncedOnce) {
                        ball.stackingDamageBonus = ball.bounceCount * playerUpgrades.stackingDamage;
                        damage += ball.stackingDamageBonus;
                    } else {
                        ball.hasBouncedOnce = true;
                    }
                }
                
                // ROLL CRITICAL INDEPENDENTLY FOR BALL DAMAGE
                const isCritical = rollForCritical();
                
                // Apply critical multiplier only if this ball damage rolled critical
                if (isCritical) {
                    damage *= playerUpgrades.criticalMultiplier;
                }
                
                // ========== USE UNIFIED DAMAGE FUNCTION ==========
                // Pass the ball so checkInstaKill can use bounce count for stacking chance
                dealDamageToBlock(block, damage, isCritical, true, ball);
                
                // ========== EMIT HIT EVENT (ALWAYS, regardless of survival) ==========
                // Remote shots and bomb damage should trigger on every bounce
                eventDispatcher.emit('onBlockHit', {
                    block: block,
                    ball: ball,
                    damage: damage,
                    isCritical: isCritical,
                    stackingBonus: ball.stackingDamageBonus || 0
                });
                
                // Handle block destruction
                if (block.hp <= 0) {
                    // ========== EMIT DESTROYED EVENT ==========
                    eventDispatcher.emit('onBlockDestroyed', {
                        block: block
                    });
                }
                
                return true; 
            }
        }
    }
    return false;
}
        
        // Circle-rectangle collision detection
        function circleRectCollision(circle, rect) {
            const closestX = Math.max(rect.x, Math.min(circle.x, rect.x + rect.width));
            const closestY = Math.max(rect.y, Math.min(circle.y, rect.y + rect.height));
            
            const distanceX = circle.x - closestX;
            const distanceY = circle.y - closestY;
            
            return (distanceX * distanceX + distanceY * distanceY) < (circle.radius * circle.radius);
        }
        
        // Calculate trajectory points for aiming guide
        // Helper to find the exact point where the ball exits the cannon barrel
function getMuzzlePosition() {
    const config = window.gameConfig;
    const pivotX = CANVAS_WIDTH / 2;
    const pivotY = getCannonY();
    // This distance should match the length of your cannon asset
    const muzzleDist = (CANNON_HEIGHT / 2) + (config.physics.projectileStartOffsetY || 0);

    return {
        x: pivotX + Math.sin(cannonAngle) * muzzleDist,
        y: pivotY + Math.cos(cannonAngle) * muzzleDist
    };
}

// Calculate trajectory points for aiming guide
// Calculate trajectory points for aiming guide
function calculateTrajectory() {
    const config = window.gameConfig;
    if (!config.visual.trajectoryGuideEnabled || !ball.inCannon) return [];
    
    const points = [];
    const velocity = config.physics.ballVelocity;
    const gravity = config.physics.gravity;
    const bounceCoeff = config.physics.bounceCoefficient;
    
    // START AT THE MUZZLE
    const muzzle = getMuzzlePosition();
    let x = muzzle.x;
    let y = muzzle.y;
    let vx = Math.sin(cannonAngle) * velocity;
    let vy = Math.cos(cannonAngle) * velocity;
    
    const dt = 0.02;
    const maxPoints = 40; // Increased to allow for reflections
    const maxDistance = config.visual.trajectoryDistance || 800; // Configurable trajectory distance
    let totalDistance = 0;
    
    for (let i = 0; i < maxPoints && totalDistance < maxDistance; i++) {
        points.push({ x, y });
        
        const prevX = x;
        const prevY = y;
        
        vy += gravity * dt;
        x += vx * dt;
        y += vy * dt;
        
        totalDistance += Math.sqrt((x - prevX) ** 2 + (y - prevY) ** 2);
        
        // Handle wall bounces (reflect trajectory)
        // Left wall
        if (x - ball.radius < 0) {
            x = ball.radius;
            vx = Math.abs(vx) * bounceCoeff; // Reflect and apply bounce coefficient
        }
        // Right wall
        else if (x + ball.radius > CANVAS_WIDTH) {
            x = CANVAS_WIDTH - ball.radius;
            vx = -Math.abs(vx) * bounceCoeff; // Reflect and apply bounce coefficient
        }
        
        // Ceiling bounce
        if (y - ball.radius < 0) {
            y = ball.radius;
            vy = Math.abs(vy) * bounceCoeff; // Reflect and apply bounce coefficient
        }
        
        // Stop at blocks - NOW WITH REFLECTION
        let hitBlock = false;
        for (const block of blocks) {
            // IGNORE DEAD BRICKS
            if (block.hp <= 0) continue;
            
            const closestX = Math.max(block.x, Math.min(x, block.x + block.width));
            const closestY = Math.max(block.y, Math.min(y, block.y + block.height));
            const distanceX = x - closestX;
            const distanceY = y - closestY;
            const distanceSquared = (distanceX * distanceX) + (distanceY * distanceY);
            
            if (distanceSquared < (ball.radius * ball.radius)) {
                // Collision detected - reflect the trajectory
                const distance = Math.sqrt(distanceSquared);
                let nx = distance === 0 ? 0 : distanceX / distance;
                let ny = distance === 0 ? -1 : distanceY / distance;
                
                // Push out of block
                x = closestX + nx * ball.radius;
                y = closestY + ny * ball.radius;
                
                // Reflect velocity
                const dot = vx * nx + vy * ny;
                if (dot < 0) {
                    vx = (vx - 2 * dot * nx) * bounceCoeff;
                    vy = (vy - 2 * dot * ny) * bounceCoeff;
                    
                    // Add horizontal variety if bounce is too vertical
                    if (Math.abs(vx) < 30) {
                        vx += (Math.random() - 0.5) * 40;
                    }
                }
                
                hitBlock = true;
                break; // Only reflect once per frame
            }
        }
        
        // Also check animating blocks if they exist
        if (!hitBlock && blockAdvanceAnimation) {
            for (const block of blockAdvanceAnimation.newBlocks) {
                const closestX = Math.max(block.x, Math.min(x, block.x + block.width));
                const closestY = Math.max(block.y, Math.min(y, block.y + block.height));
                const distanceX = x - closestX;
                const distanceY = y - closestY;
                const distanceSquared = (distanceX * distanceX) + (distanceY * distanceY);
                
                if (distanceSquared < (ball.radius * ball.radius)) {
                    // Collision detected - reflect the trajectory
                    const distance = Math.sqrt(distanceSquared);
                    let nx = distance === 0 ? 0 : distanceX / distance;
                    let ny = distance === 0 ? -1 : distanceY / distance;
                    
                    // Push out of block
                    x = closestX + nx * ball.radius;
                    y = closestY + ny * ball.radius;
                    
                    // Reflect velocity
                    const dot = vx * nx + vy * ny;
                    if (dot < 0) {
                        vx = (vx - 2 * dot * nx) * bounceCoeff;
                        vy = (vy - 2 * dot * ny) * bounceCoeff;
                        
                        // Add horizontal variety if bounce is too vertical
                        if (Math.abs(vx) < 30) {
                            vx += (Math.random() - 0.5) * 40;
                        }
                    }
                    
                    hitBlock = true;
                    break;
                }
            }
        }
        
        // Stop if ball exits bottom
        if (y - ball.radius > CANVAS_HEIGHT) break;
    }
    
    return points;
}
        
        // Render the game
        function render() {
            const config = window.gameConfig;
            
            // Clear canvas with gradient background
            const gradient = ctx.createLinearGradient(0, 0, 0, CANVAS_HEIGHT);
            gradient.addColorStop(0, config.visual.bgColorTop);
            gradient.addColorStop(1, config.visual.bgColorBottom);
            ctx.fillStyle = gradient;
            ctx.fillRect(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
            
            // --- NEW: Visual Zone Distinction ---
            const rowHeight = BLOCK_HEIGHT + BLOCK_GAP;
            const bottomBoundary = BLOCK_START_Y;
            const legacyThreshold = 7; // Slot 7 is the top of the Legacy Zone (8 rows total: 0-7)

            // Calculate the Y coordinate where the Legacy Zone ends
            // Top of 8th row is (bottom - (7 * rowHeight)). 
            // Subtract half a gap to put the line perfectly between the bricks.
            const legacyTopY = bottomBoundary - (legacyThreshold * rowHeight) - (BLOCK_GAP * 0.5);

            // 1. Highlight the Legacy Zone (Slots 0-7) with a subtle lighter tint
            ctx.fillStyle = 'rgba(255, 255, 255, 0.03)'; // Very subtle white tint
            ctx.fillRect(0, legacyTopY, CANVAS_WIDTH, CANVAS_HEIGHT - legacyTopY);

            // 2. Draw a dashed "Zone Divider" line
            ctx.setLineDash([10, 10]); // Dashed line effect
            ctx.strokeStyle = 'rgba(255, 255, 255, 0.2)';
            ctx.lineWidth = 2;
            ctx.beginPath();
            ctx.moveTo(0, legacyTopY);
            ctx.lineTo(CANVAS_WIDTH, legacyTopY);
            ctx.stroke();
            ctx.setLineDash([]); // Reset dash for other drawing
            // -------------------------------------
            
            // Check if any brick exists on the 15th row (y = 207)
            let brickOnFifteenthRow = false;
            
            for (const block of blocks) {
                const distanceFromBottom = bottomBoundary - block.y;
                const slotIndex = Math.round(distanceFromBottom / rowHeight);
                if (slotIndex === 14) { // 15th row is slot 14 (0-indexed)
                    brickOnFifteenthRow = true;
                    break;
                }
            }
            
            // Also check animating blocks
            if (blockAdvanceAnimation) {
                for (const block of blockAdvanceAnimation.newBlocks) {
                    const distanceFromBottom = blockAdvanceAnimation.bottomBoundary - block.y;
                    const slotIndex = Math.round(distanceFromBottom / rowHeight);
                    if (slotIndex === 14) {
                        brickOnFifteenthRow = true;
                        break;
                    }
                }
            }
            
            // Draw danger zone indicator (Purely Aesthetic - Line Only)
            // White by default, red if brick on 15th row
            ctx.strokeStyle = brickOnFifteenthRow ? '#ff0000' : '#ffffff';
            ctx.lineWidth = 5;
            ctx.beginPath();
            ctx.moveTo(0, VISUAL_LIMIT_Y); // Line touches top of Row 15 perfectly
            ctx.lineTo(CANVAS_WIDTH, VISUAL_LIMIT_Y);
            ctx.stroke();
            
            // Helper function to draw a block
            const drawBlock = (block) => {
                // Defensive check: skip blocks with invalid HP
                if (block.hp <= 0) {
                    return;
                }
                
                const color = getBlockColor(block.hp);
                const darkerColor = darkenColor(color, 40);
                
                // Calculate hit animation progress (0 to 1)
                const hitProgress = Math.min(block.hitAnimationTime / block.hitAnimationDuration, 1);
                
                // Scale effect: grows from 1.0 to 1.15 then back to 1.0
                const scaleAmount = 1 + Math.sin(hitProgress * Math.PI) * 0.15;
                
                // Micro vibration effect: decays over animation duration
                let vibrationX = 0;
                let vibrationY = 0;
                if (block.hitAnimationTime > 0.01 && block.vibrationIntensity !== undefined) {
                    // Decay vibration intensity over time
                    const vibrationDecay = 1 - hitProgress;
                    // Use a seeded-ish random based on block position and time for consistent feel
                    const vibrationSeed = Math.sin(block.x * 0.01 + block.y * 0.01 + hitProgress * 20) * 0.5 + 0.5;
                    const vibrationAmount = 3 * vibrationDecay * block.vibrationIntensity;
                    vibrationX = (vibrationSeed - 0.5) * 2 * vibrationAmount;
                    vibrationY = (Math.sin(vibrationSeed * 10) - 0.5) * 2 * vibrationAmount;
                }
                
                // White highlight effect: fades from white to normal color
                // Only apply if animation has actually progressed (hitAnimationTime > 0.01)
                let displayColor = color;
                if (block.hitAnimationTime > 0.01) {
                    const highlightAlpha = 1 - hitProgress;
                    // Blend white with the block color
                    const whiteRgb = hexToRgb('#ffffff');
                    const blockRgb = typeof color === 'string' && color.startsWith('rgb') 
                        ? color.match(/\d+/g).map(Number)
                        : Object.values(hexToRgb(color));
                    
                    const blendedR = Math.round(blockRgb[0] * (1 - highlightAlpha) + whiteRgb.r * highlightAlpha);
                    const blendedG = Math.round(blockRgb[1] * (1 - highlightAlpha) + whiteRgb.g * highlightAlpha);
                    const blendedB = Math.round(blockRgb[2] * (1 - highlightAlpha) + whiteRgb.b * highlightAlpha);
                    displayColor = `rgb(${blendedR}, ${blendedG}, ${blendedB})`;
                }
                
                // Block gradient
                const blockGradient = ctx.createLinearGradient(block.x + vibrationX, block.y + vibrationY, block.x + vibrationX, block.y + block.height + vibrationY);
                blockGradient.addColorStop(0, displayColor);
                blockGradient.addColorStop(1, darkenColor(displayColor, 40));
                
                // Save context for scaling and vibration
                ctx.save();
                ctx.translate(block.x + block.width / 2 + vibrationX, block.y + block.height / 2 + vibrationY);
                ctx.scale(scaleAmount, scaleAmount);
                ctx.translate(-(block.x + block.width / 2 + vibrationX), -(block.y + block.height / 2 + vibrationY));
                
                ctx.fillStyle = blockGradient;
                ctx.beginPath();
                ctx.roundRect(block.x + vibrationX, block.y + vibrationY, block.width, block.height, 6);
                ctx.fill();
                
                // Block border
                ctx.strokeStyle = 'rgba(255, 255, 255, 0.3)';
                ctx.lineWidth = 2;
                ctx.stroke();
                
                ctx.restore();
                
                // HP text (smaller font with K/M notation)
                ctx.fillStyle = '#ffffff';
                ctx.font = 'bold 27px Fredoka';
                ctx.textAlign = 'center';
                ctx.textBaseline = 'middle';
                ctx.shadowColor = 'rgba(0, 0, 0, 0.5)';
                ctx.shadowBlur = 4;
                ctx.fillText(formatHpCompact(block.hp), block.x + block.width / 2 + vibrationX, block.y + block.height / 2 + vibrationY);
                ctx.shadowBlur = 0;
            };
            
            // Draw blocks
            for (const block of blocks) {
                drawBlock(block);
            }
            
            // Draw animating new blocks
            if (blockAdvanceAnimation) {
                for (const newBlock of blockAdvanceAnimation.newBlocks) {
                    drawBlock(newBlock);
                }
            }
            
            // Draw floating damage text
            for (const damageText of damageTexts) {
                const progress = damageText.time / damageText.totalDuration;
                
                // Calculate alpha: stays at 1 during freeze time, then fades
                let alpha = 1;
                if (damageText.time > damageText.freezeTime) {
                    const fadeProgress = (damageText.time - damageText.freezeTime) / damageText.fadeDuration;
                    alpha = 1 - fadeProgress;
                }
                
                const yOffset = progress * 60; // Move up 60px over duration
                
                // Determine if this is a critical hit
                const isCritical = damageText.isCritical || false;
                const fontSize = isCritical ? 40 : 32; // 25% larger for critical (32 * 1.25 = 40)
                const textColor = isCritical ? '#ff4444' : '#ffffff'; // Red for critical
                
                ctx.save();
                ctx.globalAlpha = alpha;
                ctx.fillStyle = textColor;
                ctx.font = `bold ${fontSize}px Fredoka`;
                ctx.textAlign = 'center';
                ctx.textBaseline = 'middle';
                ctx.shadowColor = 'rgba(0, 0, 0, 0.7)';
                ctx.shadowBlur = 8;
                ctx.fillText(formatHpCompact(damageText.damage), damageText.x, damageText.y - yOffset);
                ctx.restore();
            }
            
            // Draw CRIT text (stays centered on brick, doesn't move)
            for (const critText of critTexts) {
                // Calculate alpha: stays at 1 for 300ms, then fades for 200ms
                let alpha = 1;
                if (critText.time > 0.3) {
                    const fadeProgress = (critText.time - 0.3) / 0.2;
                    alpha = 1 - fadeProgress;
                }
                
                ctx.save();
                ctx.globalAlpha = alpha;
                ctx.fillStyle = '#ff4444';
                ctx.font = 'bold 28px Fredoka';
                ctx.textAlign = 'center';
                ctx.textBaseline = 'middle';
                ctx.shadowColor = 'rgba(0, 0, 0, 0.7)';
                ctx.shadowBlur = 8;
                ctx.fillText('CRIT', critText.x, critText.y);
                ctx.restore();
            }
            
            // Draw particles
            drawParticles();
            
            // Draw insta-kill effects
            drawInstaKillEffects();
            
            // Draw remote projectiles
            for (const proj of remoteProjectiles) {
                let lineStartX, lineStartY, lineEndX, lineEndY, alpha;
                
                if (!proj.hasHitTarget) {
                    // Forward phase: line grows from ball to target
                    const currentX = proj.x + (proj.targetX - proj.x) * proj.progress;
                    const currentY = proj.y + (proj.targetY - proj.y) * proj.progress;
                    
                    lineStartX = proj.x;
                    lineStartY = proj.y;
                    lineEndX = currentX;
                    lineEndY = currentY;
                    alpha = 0.6;
                    
                    // Draw projectile core
                    ctx.fillStyle = '#ffffff';
                    ctx.beginPath();
                    ctx.arc(currentX, currentY, 6, 0, Math.PI * 2);
                    ctx.fill();
                    
                    // Draw projectile glow
                    ctx.shadowColor = '#ffffff';
                    ctx.shadowBlur = 12;
                    ctx.fillStyle = 'rgba(255, 255, 255, 0.8)';
                    ctx.beginPath();
                    ctx.arc(currentX, currentY, 8, 0, Math.PI * 2);
                    ctx.fill();
                    ctx.shadowBlur = 0;
                } else {
                    // Return phase: line shrinks back toward target
                    const returnProgress = proj.returnStartTime / proj.returnDuration;
                    
                    // Line shrinks from ball toward target
                    // Start at ball, end point moves toward target as animation progresses
                    lineStartX = proj.x + (proj.targetX - proj.x) * returnProgress;
                    lineStartY = proj.y + (proj.targetY - proj.y) * returnProgress;
                    lineEndX = proj.targetX;
                    lineEndY = proj.targetY;
                    
                    // Stay visible during retraction, no fade
                    alpha = 0.6;
                }
                
                // Draw projectile trail
                ctx.strokeStyle = `rgba(255, 255, 255, ${alpha})`;
                ctx.lineWidth = 2;
                ctx.beginPath();
                ctx.moveTo(lineStartX, lineStartY);
                ctx.lineTo(lineEndX, lineEndY);
                ctx.stroke();
            }
            
            // Draw trajectory guide (only when cannon is active)
            if (ball.inCannon && cannonActive) {
                const trajectoryPoints = calculateTrajectory();
                
                // Calculate how many dots to reveal based on animation progress
                let dotsToReveal = trajectoryPoints.length;
                if (trajectoryRevealAnimation && !trajectoryRevealAnimation.complete) {
                    // Animation is still playing - reveal progressively
                    const revealProgress = trajectoryRevealAnimation.time / TRAJECTORY_REVEAL_DURATION;
                    dotsToReveal = Math.ceil(trajectoryPoints.length * revealProgress);
                }
                // If animation is complete or null, show all dots
                
                for (let i = 0; i < dotsToReveal; i++) {
                    const point = trajectoryPoints[i];
                    const alpha = 1 - (i / trajectoryPoints.length) * 0.7;
                    const size = (6 - (i / trajectoryPoints.length) * 3) * 0.8;
                    
                    // Determine dot color: white when aiming, otherwise default
                    ctx.fillStyle = isAiming ? '#ffffff' : '#ffffff';
                    
                    // If aiming (cursor/finger pressed), show full white with no transparency
                    // Otherwise, show with transparency
                    const baseAlpha = isAiming ? 1.0 : 0.6;
                    ctx.globalAlpha = alpha * baseAlpha;
                    ctx.beginPath();
                    ctx.arc(point.x, point.y, size, 0, Math.PI * 2);
                    ctx.fill();
                }
                ctx.globalAlpha = 1;
            }
            
            // Draw cannon
            ctx.save();
            
            ctx.translate(CANVAS_WIDTH / 2, getCannonY());
            
            // Apply recoil offset (pushes cannon back along its angle)
            const recoilDistance = cannonRecoil * 20; // Max 20 pixels recoil (subtle)
            ctx.translate(-Math.sin(cannonAngle) * recoilDistance, -Math.cos(cannonAngle) * recoilDistance);
            
            ctx.rotate(-cannonAngle); // Negate angle to match physics direction
            
            if (cannonImage && cannonImage.complete) {
                const scale = CANNON_WIDTH / cannonImage.width;
                const drawWidth = CANNON_WIDTH;
                const drawHeight = cannonImage.height * scale;
                ctx.drawImage(cannonImage, -drawWidth / 2, -drawHeight / 4, drawWidth, drawHeight);
            } else {
                // Fallback cannon rendering
                ctx.fillStyle = config.visual.cannonColor;
                ctx.beginPath();
                ctx.roundRect(-30, -20, 60, 80, 8);
                ctx.fill();
                
                // Cannon glow
                ctx.shadowColor = '#00ffff';
                ctx.shadowBlur = 15;
                ctx.strokeStyle = '#00ffff';
                ctx.lineWidth = 3;
                ctx.stroke();
                ctx.shadowBlur = 0;
                
                // Cannon base
                ctx.fillStyle = '#2d5f8f';
                ctx.beginPath();
                ctx.arc(0, 0, 25, 0, Math.PI * 2);
                ctx.fill();
            }
            
            ctx.restore();
            
            // Draw ball in cannon (Preview)
            if (ball.inCannon) {
                const muzzle = getMuzzlePosition(); // Use the same muzzle logic
                
                ctx.shadowColor = config.visual.ballColor;
                ctx.shadowBlur = 20;
                ctx.fillStyle = config.visual.ballColor;
                ctx.beginPath();
                ctx.arc(muzzle.x, muzzle.y, ball.radius, 0, Math.PI * 2);
                ctx.fill();
                ctx.shadowBlur = 0;
                ctx.fillStyle = '#ffffff';
                ctx.beginPath();
                ctx.arc(muzzle.x, muzzle.y, ball.radius * 0.6, 0, Math.PI * 2);
                ctx.fill();
            }
            
            // Draw muzzle flash effect
            if (muzzleFlashEffect) {
                const muzzle = getMuzzlePosition();
                
                const progress = muzzleFlashEffect.time / MUZZLE_FLASH_DURATION;
                
                // Scale up from 1.0 to 1.8, then back down
                const scale = 1.0 + Math.sin(progress * Math.PI) * 0.8;
                
                // Fade out over the duration
                const alpha = 1 - progress;
                
                ctx.save();
                ctx.globalAlpha = alpha * 0.8;
                
                // Draw expanding glow (white explosion)
                ctx.shadowColor = '#ffffff';
                ctx.shadowBlur = 20 + progress * 10;
                ctx.fillStyle = '#ffffff';
                ctx.beginPath();
                ctx.arc(muzzle.x, muzzle.y, ball.radius * scale, 0, Math.PI * 2);
                ctx.fill();
                
                // Draw outer ring (white)
                ctx.globalAlpha = alpha * 0.5;
                ctx.strokeStyle = '#ffffff';
                ctx.lineWidth = 3;
                ctx.beginPath();
                ctx.arc(muzzle.x, muzzle.y, ball.radius * scale * 1.3, 0, Math.PI * 2);
                ctx.stroke();
                
                ctx.restore();
            }
            
            // Draw all active balls
            for (const activeBall of balls) {
                const ballX = activeBall.x;
                const ballY = activeBall.y;
                
                // Ball core
                ctx.fillStyle = '#ffffff';
                ctx.beginPath();
                ctx.arc(ballX, ballY, activeBall.radius, 0, Math.PI * 2);
                ctx.fill();
            }
            

        }
        
        // Game loop
        function gameLoop(timestamp) {
    if (!lastTime) lastTime = timestamp;
    let dt = (timestamp - lastTime) / 1000;
    dt = Math.min(dt, 0.11); // Cap delta time
    lastTime = timestamp;
    
    if (currentMode === 'play' && !gameOver) {
        // --- VISUAL UI UPDATES (Run even during tutorial) ---
        updateTrajectoryReveal(dt);        // Let the line reveal itself
        updateCannonRetractAnimation(dt);  // Let the cannon slide into position
        
        // --- GAMEPLAY PHYSICS UPDATES (Paused during tutorial) ---
        if (!gameplayTutorialActive) {
            updateBall(dt);
            updateDamageTexts(dt);
            updateCritTexts(dt);
            updateInstaKillEffects(dt);
            updateBlockAnimations(dt);
            updateBlockAdvanceAnimation(dt);
            updateRemoteProjectiles(dt);
            updateParticles(dt);
            updateCannonRecoil(dt);
            updateMuzzleFlash(dt);
            
            // CLEANUP: Remove bricks that died AFTER all skills/physics finished calculating
            cleanupDeadBricks(dt);
        }
    }
    
    render();
    animationFrameId = requestAnimationFrame(gameLoop);
}
        
        // UI Functions
        // Format score with K/M notation for compact display
        function formatScoreCompact(points) {
            if (points >= 1000000) {
                // Format as M (millions)
                const millions = points / 1000000;
                return millions.toFixed(2) + 'M';
            } else if (points >= 100000) {
                // Format as K (thousands)
                const thousands = points / 1000;
                return thousands.toFixed(2) + 'K';
            } else {
                // Show exact number
                return points.toString();
            }
        }
        
        function updateScoreDisplay(shouldAnimate = false) {
            document.getElementById('score-label').textContent = 'SCORE';
            const scoreValueElement = document.getElementById('score-value');
            scoreValueElement.textContent = formatScoreCompact(score);
            scoreValueElement.style.display = 'block'; // Ensure score is visible
            
            // Only trigger bump animation if score actually changed
            if (shouldAnimate) {
                scoreValueElement.style.animation = 'none';
                // Force reflow to restart animation
                void scoreValueElement.offsetWidth;
                scoreValueElement.style.animation = 'scoreBump 0.15s ease-out';
            }
        }
        
        function updateSkillIndicator(forceClear = false) {
            const led = document.getElementById('skill-led');
            if (!led) return;

            // If skill screen is active, leave it empty/dark
            if (skillSelectionActive) {
                led.classList.remove('red', 'yellow', 'green');
                return;
            }

            // If forceClear is true, preserve the previous state instead of clearing
            if (forceClear) {
                // Keep the previous LED state (don't remove classes)
                // This preserves the color from the previous turn
                return;
            }

            // Calculate position in the 3-round cycle
            const cyclePos = (currentRound - 1) % 3;
            let newState = null;

            if (cyclePos === 1) {
                newState = 'red';    // Rounds 2, 5, 8...
            } else if (cyclePos === 2) {
                newState = 'yellow'; // Rounds 3, 6, 9...
            } else {
                newState = 'green';  // Rounds 1, 4, 7... (Skill available at turn end)
            }

            // Only update if the state has changed
            if (newState !== previousLedState) {
                led.classList.remove('red', 'yellow', 'green');
                if (newState) {
                    led.classList.add(newState);
                }
                previousLedState = newState;
            }
        }
        
        function displayLeaderboard(entries, userRank) {
            // Remove existing leaderboard if present
            const existingLeaderboard = document.getElementById('leaderboard-container');
            if (existingLeaderboard) {
                existingLeaderboard.remove();
            }
            
            // Limit to top 8 entries
            const topEntries = entries.slice(0, 8);
            
            // Create leaderboard container
            const leaderboardContainer = document.createElement('div');
            leaderboardContainer.id = 'leaderboard-container';
            leaderboardContainer.style.cssText = `
                width: 100%;
                max-width: 100%;
                margin: 0 auto;
                padding: 0 10px;
                box-sizing: border-box;
                order: 0;
                flex: 1;
                display: flex;
                flex-direction: column;
                justify-content: center;
            `;
            
            // User score display - MOVED TO TOP, REMOVED TITLE
            if (userRank !== null && userRank !== undefined) {
                const rankDisplay = document.createElement('div');
                rankDisplay.style.cssText = `
                    font-family: 'Fredoka', sans-serif;
                    font-size: 48px;
                    color: #ffffff;
                    margin-bottom: 20px;
                    text-align: center;
                    font-weight: 700;
                    letter-spacing: 1px;
                    text-transform: uppercase;
                    background: linear-gradient(135deg, #ffffff 0%, #00ffff 100%);
                    -webkit-background-clip: text;
                    -webkit-text-fill-color: transparent;
                    background-clip: text;
                `;
                rankDisplay.textContent = `Your Score: ${score}`;
                leaderboardContainer.appendChild(rankDisplay);
            }
            
            // Leaderboard entries container with glassmorphism
            const entriesContainer = document.createElement('div');
            entriesContainer.style.cssText = `
                background: linear-gradient(135deg, rgba(255, 255, 255, 0.08) 0%, rgba(255, 255, 255, 0.02) 100%);
                backdrop-filter: blur(16px);
                -webkit-backdrop-filter: blur(16px);
                border: 1px solid rgba(255, 255, 255, 0.15);
                border-radius: 20px;
                padding: 16px;
                max-height: 380px;
                overflow-y: auto;
                box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1), inset 0 1px 0 rgba(255, 255, 255, 0.1);
            `;
            
            // Scrollbar styling
            entriesContainer.style.scrollbarWidth = 'thin';
            entriesContainer.style.scrollbarColor = 'rgba(0, 255, 255, 0.3) transparent';
            
            // Check if there are entries
            if (topEntries.length === 0) {
                const emptyMessage = document.createElement('div');
                emptyMessage.style.cssText = `
                    font-family: 'Inter', sans-serif;
                    font-size: 18px;
                    color: rgba(255, 255, 255, 0.6);
                    text-align: center;
                    padding: 40px 20px;
                    letter-spacing: 0.5px;
                `;
                emptyMessage.textContent = 'No scores yet. Be the first!';
                entriesContainer.appendChild(emptyMessage);
            } else {
                // Create entries
                topEntries.forEach((entry, index) => {
                    const entryDiv = document.createElement('div');
                    
                    // Determine medal emoji for top 3
                    let medalEmoji = '';
                    if (index === 0) medalEmoji = '🥇 ';
                    else if (index === 1) medalEmoji = '🥈 ';
                    else if (index === 2) medalEmoji = '🥉 ';
                    
                    const isTopThree = index < 3;
                    const bgGradient = isTopThree 
                        ? 'linear-gradient(135deg, rgba(74, 158, 255, 0.25) 0%, rgba(0, 255, 255, 0.1) 100%)'
                        : 'linear-gradient(135deg, rgba(255, 255, 255, 0.08) 0%, rgba(255, 255, 255, 0.02) 100%)';
                    const borderColor = isTopThree ? 'rgba(0, 255, 255, 0.4)' : 'rgba(255, 255, 255, 0.1)';
                    
                    entryDiv.style.cssText = `
                        display: flex;
                        align-items: center;
                        padding: 12px 14px;
                        margin-bottom: ${index === topEntries.length - 1 ? '0' : '8px'};
                        background: ${bgGradient};
                        border-radius: 14px;
                        border: 1px solid ${borderColor};
                        transition: all 200ms cubic-bezier(0.4, 0, 0.2, 1);
                        backdrop-filter: blur(8px);
                        -webkit-backdrop-filter: blur(8px);
                        gap: 12px;
                    `;
                    
                    // Add hover effect
                    entryDiv.addEventListener('mouseenter', () => {
                        entryDiv.style.background = isTopThree 
                            ? 'linear-gradient(135deg, rgba(74, 158, 255, 0.35) 0%, rgba(0, 255, 255, 0.15) 100%)'
                            : 'linear-gradient(135deg, rgba(255, 255, 255, 0.12) 0%, rgba(255, 255, 255, 0.05) 100%)';
                        entryDiv.style.borderColor = 'rgba(0, 255, 255, 0.5)';
                        entryDiv.style.transform = 'translateX(4px)';
                        entryDiv.style.boxShadow = '0 4px 16px rgba(0, 255, 255, 0.15)';
                    });
                    
                    entryDiv.addEventListener('mouseleave', () => {
                        entryDiv.style.background = bgGradient;
                        entryDiv.style.borderColor = borderColor;
                        entryDiv.style.transform = 'translateX(0)';
                        entryDiv.style.boxShadow = 'none';
                    });
                    
                    // Rank with medal
                    const rank = document.createElement('div');
                    rank.style.cssText = `
                        font-family: 'Fredoka', sans-serif;
                        font-size: 28px;
                        font-weight: bold;
                        color: ${isTopThree ? '#fbbf24' : '#ffffff'};
                        min-width: 60px;
                        text-align: center;
                        letter-spacing: 0.5px;
                        flex-shrink: 0;
                    `;
                    rank.textContent = `${medalEmoji}#${index + 1}`;
                    entryDiv.appendChild(rank);
                    
                    // Profile picture (if available)
                    if (entry.profilePicture) {
                        const profilePic = document.createElement('img');
                        profilePic.src = entry.profilePicture;
                        profilePic.style.cssText = `
                            width: 56px;
                            height: 56px;
                            border-radius: 50%;
                            border: 2px solid ${isTopThree ? '#fbbf24' : 'rgba(0, 255, 255, 0.4)'};
                            object-fit: cover;
                            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.3);
                            flex-shrink: 0;
                        `;
                        entryDiv.appendChild(profilePic);
                    }
                    
                    // Username
                    const username = document.createElement('div');
                    username.style.cssText = `
                        font-family: 'Fredoka', sans-serif;
                        font-size: 24px;
                        font-weight: 600;
                        color: #ffffff;
                        flex: 1;
                        overflow: hidden;
                        text-overflow: ellipsis;
                        white-space: nowrap;
                        letter-spacing: 0.3px;
                        min-width: 0;
                    `;
                    username.textContent = entry.username || 'Anonymous';
                    entryDiv.appendChild(username);
                    
                    // Score
                    const scoreDiv = document.createElement('div');
                    scoreDiv.style.cssText = `
                        font-family: 'Fredoka', sans-serif;
                        font-size: 28px;
                        font-weight: bold;
                        color: ${isTopThree ? '#fbbf24' : '#00ffff'};
                        min-width: 80px;
                        text-align: right;
                        letter-spacing: 0.5px;
                        flex-shrink: 0;
                    `;
                    scoreDiv.textContent = entry.score;
                    entryDiv.appendChild(scoreDiv);
                    
                    entriesContainer.appendChild(entryDiv);
                });
            }
            
            leaderboardContainer.appendChild(entriesContainer);
            
            // Insert leaderboard before restart button
            const gameOverScreen = document.getElementById('game-over-screen');
            const restartButton = document.getElementById('restart-button');
            gameOverScreen.insertBefore(leaderboardContainer, restartButton);
        }
        
        function showGameOver(leaderboardData) {
            // Hide skill indicator during game over
            const skillIndicator = document.getElementById('skill-indicator');
            if (skillIndicator) {
                skillIndicator.style.display = 'none';
            }
            
            // Display leaderboard if data is available
            if (leaderboardData && leaderboardData.entries) {
                displayLeaderboard(leaderboardData.entries, leaderboardData.userRank);
            }
            
            document.getElementById('game-over-screen').classList.add('visible');
        }
        
        function hideGameOver() {
            document.getElementById('game-over-screen').classList.remove('visible');
            
            // Show skill indicator again when leaving game over
            const skillIndicator = document.getElementById('skill-indicator');
            if (skillIndicator) {
                skillIndicator.style.display = 'flex';
            }
            
            // Remove leaderboard when hiding game over
            const existingLeaderboard = document.getElementById('leaderboard-container');
            if (existingLeaderboard) {
                existingLeaderboard.remove();
            }
        }
        

        async function triggerGameOver() {
            gameOver = true;
            
            // Stop background music
            stopBackgroundMusic();
            
            const finalScore = score; // Total bricks destroyed
            
            // Try to submit score to leaderboard
            try {
                const response = await lib.addPlayerScoreToLeaderboard(finalScore, 10);
                
                if (response.success) {
                    // Show game over screen with leaderboard data
                    showGameOver(response);
                    lib.log(`Score submitted successfully. Rank: ${response.userRank}`);
                } else {
                    // Show game over without leaderboard
                    showGameOver(null);
                    lib.log('Score submission failed, but no error thrown');
                }
            } catch (error) {
                // Handle errors gracefully (guest users, network issues, etc.)
                lib.log(`Failed to submit score to leaderboard: ${error.message}`);
                
                // Try to at least fetch the leaderboard without submitting
                try {
                    const leaderboardResponse = await lib.getTopNEntriesFromLeaderboard(10);
                    showGameOver(leaderboardResponse);
                } catch (fetchError) {
                    lib.log(`Failed to fetch leaderboard: ${fetchError.message}`);
                    // Show game over without leaderboard
                    showGameOver(null);
                }
            }
        }
        
        // Input handling
        function setupInputHandlers() {
            const container = document.getElementById('game-container');
            
            // Touch handlers
            container.addEventListener('touchstart', handleTouchStart, { passive: false });
            container.addEventListener('touchmove', handleTouchMove, { passive: false });
            container.addEventListener('touchend', handleTouchEnd, { passive: false });
            container.addEventListener('touchcancel', handleTouchEnd, { passive: false });
            
            // Mouse handlers
            container.addEventListener('mousedown', handleMouseDown);
            container.addEventListener('mousemove', handleMouseMove);
            container.addEventListener('mouseup', handleMouseUp);
            container.addEventListener('mouseleave', handleMouseUp);
            
            // Restart button
            const restartBtn = document.getElementById('restart-button');
            
            const handleRestart = async () => {
                // Reset all runtime state
                gameOver = false;
                lastTime = 0;
                currentRound = 1;
                score = 0;
                bricksDestroyedCount = 0; // Reset brick counter
                isAiming = false;
                hasFiredFirstShot = false;
                skillSelectionActive = false;
                gameplayTutorialActive = false;
                cannonAngle = 0;
                cannonRecoil = 0;
                cannonRetractAnimation = 0;
                cannonRestTimer = 0;
                cannonRecoilTimer = 0;
                cannonActive = true;
                cannonCanFire = true;
                ballsPending = 0;
                isFiringSequence = false;
                muzzleFlashEffect = null;
                blockAdvanceAnimation = null;
                touchId = null;
                
                // Clear all collections
                balls = [];
                blocks = [];
                damageTexts = [];
                remoteProjectiles = [];
                particles = [];
                critTexts = [];
                instaKillEffects = [];
                
                // Reset player upgrades
                playerUpgrades = {
                    numProjectiles: 1,
                    extraDamage: 0,
                    calculatedBallDamage: 1,
                    criticalChance: 0,
                    criticalMultiplier: 1,
                    remoteLevel: 0,
                    remoteProjectileDamage: 0,
                    instaKillChance: 0.5, // Keep base 0.1% instakill chance
                    bombLevel: 0,
                    bombDamage: 0,
                    burningBricksDamage: 0,
                    stackingDamage: 0
                };
                
                // Reset LED state tracker
                previousLedState = null;
                
                // Reset fill rate bucket
                window.fillRateBucket = initializeFillRateBucket();
                
                // Restart background music
                playBackgroundMusic();
                
                // Initialize game state
                initGameState();
            };
            
            restartBtn.addEventListener('click', handleRestart);
            
            // Add explicit touch handlers for mobile
            restartBtn.addEventListener('touchstart', (e) => {
                e.preventDefault();
                e.stopPropagation();
                restartBtn.style.transform = 'scale(0.95)';
            });
            
            restartBtn.addEventListener('touchend', (e) => {
                e.preventDefault();
                e.stopPropagation();
                restartBtn.style.transform = 'scale(1)';
                handleRestart();
            });
            
            restartBtn.addEventListener('touchcancel', (e) => {
                e.preventDefault();
                restartBtn.style.transform = 'scale(1)';
            });
            
            // Prevent context menu
            container.addEventListener('contextmenu', (e) => e.preventDefault());
        }
        
        function getCanvasCoords(clientX, clientY) {
            const rect = canvas.getBoundingClientRect();
            return {
                x: (clientX - rect.left) * (CANVAS_WIDTH / rect.width),
                y: (clientY - rect.top) * (CANVAS_HEIGHT / rect.height)
            };
        }
        
        function updateCannonAngle(x) {
            // Map x position to angle
            const centerX = CANVAS_WIDTH / 2;
            const maxOffset = CANVAS_WIDTH / 2;
            const offset = (x - centerX) / maxOffset;
            cannonAngle = offset * MAX_ANGLE;
            cannonAngle = Math.max(MIN_ANGLE, Math.min(MAX_ANGLE, cannonAngle));
        }
        
        function handleTouchStart(e) {
            e.preventDefault();
            if (gameOver || !ball.inCannon || currentMode === 'edit' || skillSelectionActive) return;
            
            const touch = e.touches[0];
            touchId = touch.identifier;
            isAiming = true;
            
            const coords = getCanvasCoords(touch.clientX, touch.clientY);
            updateCannonAngle(coords.x);
        }
        
        function handleTouchMove(e) {
            e.preventDefault();
            if (!isAiming || touchId === null) return;
            
            for (const touch of e.touches) {
                if (touch.identifier === touchId) {
                    const coords = getCanvasCoords(touch.clientX, touch.clientY);
                    updateCannonAngle(coords.x);
                    break;
                }
            }
        }
        
        function handleTouchEnd(e) {
            e.preventDefault();
            if (!isAiming) return;
            
            let touchEnded = true;
            for (const touch of e.touches) {
                if (touch.identifier === touchId) {
                    touchEnded = false;
                    break;
                }
            }
            
            if (touchEnded) {
                isAiming = false;
                touchId = null;
                fireBall();
            }
        }
        
        function handleMouseDown(e) {
            if (gameOver || !ball.inCannon || currentMode === 'edit' || skillSelectionActive) return;
            
            isAiming = true;
            const coords = getCanvasCoords(e.clientX, e.clientY);
            updateCannonAngle(coords.x);
        }
        
        function handleMouseMove(e) {
            if (!isAiming && !ball.inCannon) return;
            
            const coords = getCanvasCoords(e.clientX, e.clientY);
            
            if (ball.inCannon) {
                updateCannonAngle(coords.x);
            }
        }
        
        function handleMouseUp(e) {
            if (!isAiming) return;
            
            isAiming = false;
            fireBall();
        }
        
        // Sound cooldown tracking
        let lastJellyPopTime = 0;
        let lastLaserSoundTime = 0;
        const JELLY_POP_SOUND_COOLDOWN = 0.1; // 100ms cooldown for collision sounds
        const LASER_SOUND_COOLDOWN = 0.06; // 60ms cooldown for sniper sounds
        
        // Play jelly pop sound (collision sound) with cooldown and pitch randomization
        function playJellyPopSound() {
            if (!audioContext || !jellyPopBuffer) return;
            
            const currentTime = performance.now() / 1000;
            
            // Only play if enough time has passed since last sound
            if (currentTime - lastJellyPopTime < JELLY_POP_SOUND_COOLDOWN) {
                return; // Skip this sound to avoid overlap
            }
            
            lastJellyPopTime = currentTime;
            
            try {
                const source = audioContext.createBufferSource();
                source.buffer = jellyPopBuffer;
                
                // Apply +/- 10% pitch randomization
                const pitchVariation = 1 + (Math.random() - 0.5) * 0.2; // Range: 0.9 to 1.1
                source.playbackRate.value = pitchVariation;
                
                const gainNode = audioContext.createGain();
                gainNode.gain.value = 0.75; // 75% volume for brick hits
                source.connect(gainNode);
                gainNode.connect(audioContext.destination);
                source.start(0);
            } catch (e) {
                // Silently fail if audio playback fails
            }
        }
        
        // Play laser sound (higher pitched jelly pop for remote projectiles) with cooldown and pitch randomization
        function playLaserSound() {
            if (!audioContext || !jellyPopBuffer) return;
            
            const currentTime = performance.now() / 1000;
            
            // Only play if enough time has passed since last sound
            if (currentTime - lastLaserSoundTime < LASER_SOUND_COOLDOWN) {
                return; // Skip this sound to avoid overlap
            }
            
            lastLaserSoundTime = currentTime;
            
            try {
                const source = audioContext.createBufferSource();
                source.buffer = jellyPopBuffer;
                
                // Base pitch for laser effect with +/- 10% randomization
                const basePitch = 1.5;
                const pitchVariation = basePitch + (Math.random() - 0.5) * 0.3; // Range: 1.35 to 1.65
                source.playbackRate.value = pitchVariation;
                
                const gainNode = audioContext.createGain();
                gainNode.gain.value = 0.8; // 80% volume for remote projectiles
                source.connect(gainNode);
                gainNode.connect(audioContext.destination);
                source.start(0);
            } catch (e) {
                // Silently fail if audio playback fails
            }
        }
        
        // Play brick destroy sound with cooldown to prevent overlapping sounds
function playBrickDestroySound() {
    if (!audioContext || !brickDestroyBuffer) return;
    
    const currentTime = performance.now() / 1000;
    
    // Only play if enough time has passed since last sound
    if (currentTime - lastBrickDestroyTime < BRICK_DESTROY_SOUND_COOLDOWN) {
        return; // Skip this sound to avoid overlap
    }
    
    lastBrickDestroyTime = currentTime;
    
    try {
        const source = audioContext.createBufferSource();
        source.buffer = brickDestroyBuffer;
        const gainNode = audioContext.createGain();
        gainNode.gain.value = 0.5; // 50% volume for brick destruction
        source.connect(gainNode);
        gainNode.connect(audioContext.destination);
        source.start(0);
    } catch (e) {
        // Silently fail if audio playback fails
    }
}
        
        // Play cannon shoot sound
        function playCannonShootSound() {
            if (!audioContext || !cannonShootBuffer) return;
            
            try {
                const source = audioContext.createBufferSource();
                source.buffer = cannonShootBuffer;
                const gainNode = audioContext.createGain();
                gainNode.gain.value = 0.6; // 60% volume for subtle feedback
                source.connect(gainNode);
                gainNode.connect(audioContext.destination);
                source.start(0);
            } catch (e) {
                // Silently fail if audio playback fails
            }
        }
        
        // Preload assets
        function preloadAssets() {
            return new Promise((resolve) => {
                // Show loading screen
                const loadingScreen = document.getElementById('loading-screen');
                if (loadingScreen) {
                    loadingScreen.style.display = 'flex';
                }
                
                // Start loading animation
                const loadingText = document.getElementById('loading-text');
                const loadingTextDots = document.getElementById('loading-text-dots');
                let dotCount = 0;
                const loadingInterval = setInterval(() => {
                    dotCount = (dotCount + 1) % 4;
                    if (loadingTextDots) {
                        loadingTextDots.textContent = '.'.repeat(dotCount);
                    }
                }, 250); // Change every 250ms for smooth animation
                
                // Initialize audio context
                if (!audioContext) {
                    audioContext = new (window.AudioContext || window.webkitAudioContext)();
                }
                
                let assetsLoaded = 0;
                let assetsToLoad = 8;
                
                const checkComplete = () => {
                    assetsLoaded++;
                    if (assetsLoaded === assetsToLoad) {
                        // Clear loading animation
                        clearInterval(loadingInterval);
                        
                        // Hide loading screen
                        if (loadingScreen) {
                            loadingScreen.style.display = 'none';
                        }
                        
                        resolve();
                    }
                };
                
                // Load cannon image
                const cannonAsset = lib.getAsset('cannon_turret');
                if (cannonAsset && cannonAsset.url) {
                    cannonImage = new Image();
                    cannonImage.onload = checkComplete;
                    cannonImage.onerror = checkComplete;
                    cannonImage.src = cannonAsset.url;
                } else {
                    checkComplete();
                }
                
                // Load insta-kill icon
                const instaKillAsset = lib.getAsset('skill_icon_insta_kill');
                if (instaKillAsset && instaKillAsset.url) {
                    const instaKillImg = new Image();
                    instaKillImg.onload = () => {
                        assetCache.skill_icon_insta_kill = instaKillImg;
                        checkComplete();
                    };
                    instaKillImg.onerror = checkComplete;
                    instaKillImg.src = instaKillAsset.url;
                } else {
                    checkComplete();
                }
                
                // Load jelly pop sound
                const jellyAsset = lib.getAsset('jelly_pop_sound');
                if (jellyAsset && jellyAsset.url) {
                    fetch(jellyAsset.url)
                        .then(response => response.arrayBuffer())
                        .then(arrayBuffer => audioContext.decodeAudioData(arrayBuffer))
                        .then(audioBuffer => {
                            jellyPopBuffer = audioBuffer;
                            checkComplete();
                        })
                        .catch(() => checkComplete());
                } else {
                    checkComplete();
                }
                
                // Load brick destroy sound
                const brickDestroyAsset = lib.getAsset('brick_destroy_sound');
                if (brickDestroyAsset && brickDestroyAsset.url) {
                    fetch(brickDestroyAsset.url)
                        .then(response => response.arrayBuffer())
                        .then(arrayBuffer => audioContext.decodeAudioData(arrayBuffer))
                        .then(audioBuffer => {
                            brickDestroyBuffer = audioBuffer;
                            checkComplete();
                        })
                        .catch(() => checkComplete());
                } else {
                    checkComplete();
                }
                
                // Load skill discovery sound
                const skillDiscoveryAsset = lib.getAsset('skill_discovery_sound');
                if (skillDiscoveryAsset && skillDiscoveryAsset.url) {
                    fetch(skillDiscoveryAsset.url)
                        .then(response => response.arrayBuffer())
                        .then(arrayBuffer => audioContext.decodeAudioData(arrayBuffer))
                        .then(audioBuffer => {
                            skillDiscoveryBuffer = audioBuffer;
                            checkComplete();
                        })
                        .catch(() => checkComplete());
                } else {
                    checkComplete();
                }
                
                // Load upgrade applied sound
                const upgradeAppliedAsset = lib.getAsset('upgrade_applied_sound');
                if (upgradeAppliedAsset && upgradeAppliedAsset.url) {
                    fetch(upgradeAppliedAsset.url)
                        .then(response => response.arrayBuffer())
                        .then(arrayBuffer => audioContext.decodeAudioData(arrayBuffer))
                        .then(audioBuffer => {
                            upgradeAppliedBuffer = audioBuffer;
                            checkComplete();
                        })
                        .catch(() => checkComplete());
                } else {
                    checkComplete();
                }
                
                // Load cannon shoot sound
                const cannonShootAsset = lib.getAsset('cannon_shoot_sound');
                if (cannonShootAsset && cannonShootAsset.url) {
                    fetch(cannonShootAsset.url)
                        .then(response => response.arrayBuffer())
                        .then(arrayBuffer => audioContext.decodeAudioData(arrayBuffer))
                        .then(audioBuffer => {
                            cannonShootBuffer = audioBuffer;
                            checkComplete();
                        })
                        .catch(() => checkComplete());
                } else {
                    checkComplete();
                }
                
                // Load background music from GitHub raw content
                const backgroundMusicUrl = 'https://raw.githubusercontent.com/petrecelvlad/Astrocade-Assets/main/Luxury%20Arcade%20Drift.mp3';
                fetch(backgroundMusicUrl)
                    .then(response => response.arrayBuffer())
                    .then(arrayBuffer => audioContext.decodeAudioData(arrayBuffer))
                    .then(audioBuffer => {
                        backgroundMusicBuffer = audioBuffer;
                        checkComplete();
                    })
                    .catch(() => {
                        lib.log('Failed to load background music');
                        checkComplete();
                    });
            });
        }
        
        // Play background music (looping)
        function playBackgroundMusic() {
            if (!audioContext || !backgroundMusicBuffer) return;
            
            try {
                // Stop any existing background music
                stopBackgroundMusic();
                
                // Create new source
                backgroundMusicSource = audioContext.createBufferSource();
                backgroundMusicSource.buffer = backgroundMusicBuffer;
                backgroundMusicSource.loop = true;
                
                // Create gain node for volume control
                backgroundMusicGainNode = audioContext.createGain();
                backgroundMusicGainNode.gain.value = 0.10; // 10% volume for background
                
                // Connect and play
                backgroundMusicSource.connect(backgroundMusicGainNode);
                backgroundMusicGainNode.connect(audioContext.destination);
                backgroundMusicSource.start(0);
            } catch (e) {
                lib.log('Failed to play background music: ' + e.message);
            }
        }
        
        // Stop background music
        function stopBackgroundMusic() {
            if (backgroundMusicSource) {
                try {
                    backgroundMusicSource.stop();
                } catch (e) {
                    // Already stopped
                }
                backgroundMusicSource = null;
            }
        }
        
        // Setup game parameters UI
        function setupGameParameters() {
            lib.showGameParameters({
                name: 'Game Settings',
                params: {
                    'Gravity': {
                        key: 'gameConfig.physics.gravity',
                        type: 'slider',
                        min: 400,
                        max: 1200,
                        step: 50,
                        onChange: (value) => {
                            window.gameConfig.physics.gravity = value;
                        }
                    },
                    'Ball Speed': {
                        key: 'gameConfig.physics.ballVelocity',
                        type: 'slider',
                        min: 800,
                        max: 1600,
                        step: 50,
                        onChange: (value) => {
                            window.gameConfig.physics.ballVelocity = value;
                        }
                    },
                    'Bounce': {
                        key: 'gameConfig.physics.bounceCoefficient',
                        type: 'slider',
                        min: 0.1,
                        max: 1.0,
                        step: 0.05,
                        onChange: (value) => {
                            window.gameConfig.physics.bounceCoefficient = value;
                        }
                    },
                    'Ball Size': {
                        key: 'gameConfig.physics.ballRadius',
                        type: 'slider',
                        min: 8,
                        max: 20,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.physics.ballRadius = value;
                            if (ball) ball.radius = value;
                        }
                    },
                    'Projectile Start Offset': {
                        key: 'gameConfig.physics.projectileStartOffsetY',
                        type: 'slider',
                        min: 50,
                        max: 150,
                        step: 5,
                        onChange: (value) => {
                            window.gameConfig.physics.projectileStartOffsetY = value;
                        }
                    },
                    'Speed Acceleration Per Bounce': {
                        key: 'gameConfig.physics.speedAccelerationPerBounce',
                        type: 'slider',
                        min: 0,
                        max: 0.1,
                        step: 0.005,
                        onChange: (value) => {
                            window.gameConfig.physics.speedAccelerationPerBounce = value;
                        }
                    },
                    'Cannon Vertical Position': {
                        key: 'gameConfig.visual.cannonY',
                        type: 'slider',
                        min: 20,
                        max: 200,
                        step: 5,
                        onChange: (value) => {
                            window.gameConfig.visual.cannonY = value;
                        }
                    },
                    'HP Multiplier': {
                        key: 'gameConfig.difficulty.hpMultiplier',
                        type: 'slider',
                        min: 0.5,
                        max: 2.0,
                        step: 0.1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.hpMultiplier = value;
                        }
                    },
                    'Blocks Per Row': {
                        key: 'gameConfig.difficulty.blocksPerRow',
                        type: 'slider',
                        min: 5,
                        max: 9,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.blocksPerRow = value;
                        }
                    },
                    'Starting Rows': {
                        key: 'gameConfig.difficulty.startingRows',
                        type: 'slider',
                        min: 1,
                        max: 8,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.startingRows = value;
                        }
                    },
                    'Skill Selection Frequency': {
                        key: 'gameConfig.difficulty.skillSelectionFrequency',
                        type: 'slider',
                        min: 1,
                        max: 5,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.skillSelectionFrequency = value;
                            skillSelectionRound = value;
                        }
                    },
                    'HP Scaling Divisor': {
                        key: 'gameConfig.difficulty.hpScalingDivisor',
                        type: 'slider',
                        min: 1,
                        max: 10,
                        step: 0.5,
                        onChange: (value) => {
                            window.gameConfig.difficulty.hpScalingDivisor = value;
                        }
                    },
                    '100% Fill Weight': {
                        key: 'gameConfig.difficulty.fillRateWeights.0.weight',
                        type: 'slider',
                        min: 0,
                        max: 50,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.fillRateWeights[0].weight = value;
                            window.fillRateBucket = initializeFillRateBucket();
                        }
                    },
                    '75% Fill Weight': {
                        key: 'gameConfig.difficulty.fillRateWeights.1.weight',
                        type: 'slider',
                        min: 0,
                        max: 50,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.fillRateWeights[1].weight = value;
                            window.fillRateBucket = initializeFillRateBucket();
                        }
                    },
                    '63% Fill Weight': {
                        key: 'gameConfig.difficulty.fillRateWeights.2.weight',
                        type: 'slider',
                        min: 0,
                        max: 50,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.fillRateWeights[2].weight = value;
                            window.fillRateBucket = initializeFillRateBucket();
                        }
                    },
                    '50% Fill Weight': {
                        key: 'gameConfig.difficulty.fillRateWeights.3.weight',
                        type: 'slider',
                        min: 0,
                        max: 50,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.fillRateWeights[3].weight = value;
                            window.fillRateBucket = initializeFillRateBucket();
                        }
                    },
                    '38% Fill Weight': {
                        key: 'gameConfig.difficulty.fillRateWeights.4.weight',
                        type: 'slider',
                        min: 0,
                        max: 50,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.fillRateWeights[4].weight = value;
                            window.fillRateBucket = initializeFillRateBucket();
                        }
                    },
                    '25% Fill Weight': {
                        key: 'gameConfig.difficulty.fillRateWeights.5.weight',
                        type: 'slider',
                        min: 0,
                        max: 50,
                        step: 1,
                        onChange: (value) => {
                            window.gameConfig.difficulty.fillRateWeights[5].weight = value;
                            window.fillRateBucket = initializeFillRateBucket();
                        }
                    },
                    'Cannon Color': {
                        key: 'gameConfig.visual.cannonColor',
                        type: 'color',
                        onChange: (value) => {
                            window.gameConfig.visual.cannonColor = value;
                        }
                    },
                    'Ball Color': {
                        key: 'gameConfig.visual.ballColor',
                        type: 'color',
                        onChange: (value) => {
                            window.gameConfig.visual.ballColor = value;
                        }
                    },
                    'Show Trajectory': {
                        key: 'gameConfig.visual.trajectoryGuideEnabled',
                        type: 'checkbox',
                        onChange: (value) => {
                            window.gameConfig.visual.trajectoryGuideEnabled = value;
                        }
                    },
                    'Trajectory Distance': {
                        key: 'gameConfig.visual.trajectoryDistance',
                        type: 'slider',
                        min: 200,
                        max: 1600,
                        step: 50,
                        onChange: (value) => {
                            window.gameConfig.visual.trajectoryDistance = value;
                        }
                    }
                }
            });
        }
        
        // Main run function
        
        // ============================================================
        // GAME STATE DOMAIN ENGINE (Hexagonal Lite)
        // ============================================================
        class GameState {
            constructor() {
                this.reset();
            }
            
            reset() {
                // Round & Score
                this.currentRound = 1;
                this.score = 0;
                this.gameOver = false;
                this.hasFiredFirstShot = false;
                
                // Entities
                this.blocks = [];
                this.balls = [];
                this.damageTexts = [];
                this.remoteProjectiles = [];
                this.particles = [];
                this.critTexts = [];
                this.instaKillEffects = [];
                
                // Cannon State
                this.cannonAngle = 0;
                this.isAiming = false;
                this.cannonActive = true;
                this.cannonCanFire = true;
                this.cannonRecoil = 0;
                this.cannonRetractAnimation = 0;
                this.cannonRestTimer = 0;
                this.cannonRecoilTimer = 0;
                
                // Firing Sequence
                this.ballsPending = 0;
                this.isFiringSequence = false;
                
                // Block Animation
                this.blockAdvanceAnimation = null;
                
                // UI State
                this.skillSelectionActive = false;
                this.gameplayTutorialActive = false;
                
                // Upgrades
                this.playerUpgrades = {
                    numProjectiles: 1,
                    extraDamage: 0,
                    criticalChance: 0,
                    criticalMultiplier: 1,
                    remoteProjectileDamage: 0,
                    instaKillChance: 0.5, // Base 0.1% instakill chance
                    bombDamage: 0,
                    burningBricksDamage: 0,
                    stackingDamage: 0
                };
            }
            
            // Query methods (read-only)
            getCurrentRound() { return this.currentRound; }
            getScore() { return this.score; }
            isGameOver() { return this.gameOver; }
            getBlocks() { return this.blocks; }
            getBalls() { return this.balls; }
            getCannonAngle() { return this.cannonAngle; }
            isCannonActive() { return this.cannonActive; }
            canCannonFire() { return this.cannonCanFire; }
            getPlayerUpgrades() { return this.playerUpgrades; }
            isSkillSelectionActive() { return this.skillSelectionActive; }
            
            // Mutation methods (controlled state changes)
            setCurrentRound(round) { this.currentRound = round; }
            addScore(points) { this.score += points; }
            setGameOver(value) { this.gameOver = value; }
            setHasFiredFirstShot(value) { this.hasFiredFirstShot = value; }
            setCannonAngle(angle) { this.cannonAngle = angle; }
            setIsAiming(value) { this.isAiming = value; }
            setCannonActive(value) { this.cannonActive = value; }
            setCannonCanFire(value) { this.cannonCanFire = value; }
            setCannonRecoil(value) { this.cannonRecoil = value; }
            setSkillSelectionActive(value) { this.skillSelectionActive = value; }
            setGameplayTutorialActive(value) { this.gameplayTutorialActive = value; }
            
            // Entity management
            addBlock(block) { this.blocks.push(block); }
            removeBlock(block) { this.blocks = this.blocks.filter(b => b !== block); }
            setBlocks(blocks) { this.blocks = blocks; }
            
            addBall(ball) { this.balls.push(ball); }
            removeBall(ball) { this.balls = this.balls.filter(b => b !== ball); }
            setBalls(balls) { this.balls = balls; }
            
            addDamageText(text) { this.damageTexts.push(text); }
            removeDamageText(text) { this.damageTexts = this.damageTexts.filter(t => t !== text); }
            
            addParticle(particle) { this.particles.push(particle); }
            removeParticle(particle) { this.particles = this.particles.filter(p => p !== particle); }
            
            addCritText(text) { this.critTexts.push(text); }
            removeCritText(text) { this.critTexts = this.critTexts.filter(t => t !== text); }
            
            addInstaKillEffect(effect) { this.instaKillEffects.push(effect); }
            removeInstaKillEffect(effect) { this.instaKillEffects = this.instaKillEffects.filter(e => e !== effect); }
            
            addRemoteProjectile(proj) { this.remoteProjectiles.push(proj); }
            removeRemoteProjectile(proj) { this.remoteProjectiles = this.remoteProjectiles.filter(p => p !== proj); }
            
            // Upgrade management
            upgradeSkill(skillId) {
                switch(skillId) {
                    case 'projectile':
                        this.playerUpgrades.numProjectiles++;
                        break;
                    case 'damage':
                        this.playerUpgrades.extraDamage++;
                        break;
                    case 'critical':
                        this.playerUpgrades.criticalMultiplier++;
                        break;
                    case 'remote':
                        this.playerUpgrades.remoteProjectileDamage++;
                        break;
                    case 'bomb':
                        this.playerUpgrades.bombDamage++;
                        break;
                    case 'burning_bricks':
                        this.playerUpgrades.burningBricksDamage++;
                        break;
                    case 'insta_kill':
                        this.playerUpgrades.instaKillChance++;
                        break;
                    case 'stacking_damage':
                        this.playerUpgrades.stackingDamage++;
                        break;
                }
            }
        }
        
        // Global game state instance
        let gameState = new GameState();
        
        function run(mode) {
            lib.log('run() called. Mode: ' + mode);
            currentMode = mode;
            
            // Initialize Fibonacci scaling engine
            generateFibonacciTable(100);
            
            // Setup canvas
            canvas = document.getElementById('game-canvas');
            ctx = canvas.getContext('2d');
            canvas.width = CANVAS_WIDTH;
            canvas.height = CANVAS_HEIGHT;
            
            // Validate and set defaults for gameConfig
            const config = window.gameConfig;
            if (!config.physics) config.physics = {};
            if (!config.difficulty) config.difficulty = {};
            if (!config.visual) config.visual = {};
            
            config.physics.gravity = config.physics.gravity || 800;
            config.physics.ballVelocity = config.physics.ballVelocity || 1200;
            config.physics.bounceCoefficient = config.physics.bounceCoefficient || 0.95;
            config.physics.ballRadius = config.physics.ballRadius || 12;
            config.physics.projectileStartOffsetY = config.physics.projectileStartOffsetY || 100;
            config.physics.speedAccelerationPerBounce = config.physics.speedAccelerationPerBounce || 0.02;
            
            config.difficulty.hpMultiplier = config.difficulty.hpMultiplier || 1;
            config.difficulty.blocksPerRow = config.difficulty.blocksPerRow || 7;
            config.difficulty.skillSelectionFrequency = config.difficulty.skillSelectionFrequency || 2;
            config.difficulty.startingRows = config.difficulty.startingRows || 5;
            config.difficulty.hpScalingDivisor = config.difficulty.hpScalingDivisor || 7;
            
            config.visual.cannonColor = config.visual.cannonColor || '#4a9eff';
            config.visual.ballColor = config.visual.ballColor || '#00ffff';
            config.visual.bgColorTop = config.visual.bgColorTop || '#0a0e27';
            config.visual.bgColorBottom = config.visual.bgColorBottom || '#1a1f3a';
            config.visual.trajectoryGuideEnabled = config.visual.trajectoryGuideEnabled !== false;
            config.visual.trajectoryGuideColor = config.visual.trajectoryGuideColor || '#00ffff';
            config.visual.cannonY = config.visual.cannonY || 80;
            config.visual.trajectoryDistance = config.visual.trajectoryDistance || 800;
            
            // Setup game parameters UI
            setupGameParameters();
            
            // Set skill selection frequency from config
            skillSelectionRound = config.difficulty.skillSelectionFrequency;
            
            // Load player's saved state and show main menu
            preloadAssets().then(async () => {
                // Initialize event system
                initializeEventSystem();
                
                // Show main menu
                const mainMenuScreen = document.getElementById('main-menu-screen');
                if (mainMenuScreen) {
                    mainMenuScreen.classList.add('visible');
                }
                
                // Setup PLAY button handler
                const playButton = document.getElementById('play-button');
                if (playButton) {
                    const startGame = async () => {
                        // Hide main menu
                        mainMenuScreen.classList.remove('visible');
                        
                        // Show skill indicator now that game is starting
                        const skillIndicator = document.getElementById('skill-indicator');
                        if (skillIndicator) {
                            skillIndicator.style.display = 'flex';
                        }
                        
                        // Load saved tutorial states
                        try {
                            const savedState = await lib.getUserGameState();
                            if (savedState && savedState.state) {
                                // Load skill selection tutorial state
                                if (savedState.state.hasSeenFirstSkillSelection) {
                                    hasSeenFirstSkillSelection = true;
                                    lib.log('Skill selection tutorial state loaded: player has seen tutorial');
                                } else {
                                    hasSeenFirstSkillSelection = false;
                                    lib.log('Skill selection tutorial state loaded: first time for this tutorial');
                                }
                                
                                // Load gameplay tutorial state
                                if (savedState.state.hasSeenGameplayTutorial) {
                                    hasSeenGameplayTutorial = true;
                                    lib.log('Gameplay tutorial state loaded: player has seen tutorial');
                                } else {
                                    hasSeenGameplayTutorial = false;
                                    lib.log('Gameplay tutorial state loaded: first time for this tutorial');
                                }
                                
                                        // Load rare tutorial state
                                if (savedState.state.hasSeenFirstSkillTutorial === true) {
                                    hasSeenFirstSkillTutorial = true;
                                    lib.log('Rare tutorial state loaded: player has seen rare tutorial');
                                } else {
                                    hasSeenFirstSkillTutorial = false;
                                    lib.log('Rare tutorial state loaded: first time for rare tutorial');
                                }
                            } else {
                                hasSeenFirstSkillSelection = false;
                                hasSeenGameplayTutorial = false;
                                hasSeenFirstSkillTutorial = false;
                                lib.log('Tutorial states loaded: first time player');
                            }
                        } catch (error) {
                            lib.log(`Failed to load tutorial states: ${error.message}`);
                            hasSeenFirstSkillSelection = false;
                            hasSeenGameplayTutorial = false;
                            hasSeenFirstSkillTutorial = false;
                        }
                        
                        initGameState();
                        setupInputHandlers();
                        
                        // Start background music
                        playBackgroundMusic();
                        
                        // Cancel any existing animation frame
                        if (animationFrameId) {
                            cancelAnimationFrame(animationFrameId);
                        }
                        
                        lastTime = 0;
                        animationFrameId = requestAnimationFrame(gameLoop);
                        
                        // Show gameplay tutorial if first time
                        if (!hasSeenGameplayTutorial) {
                            showGameplayTutorial();
                        }
                    };
                    
                    // Add click handler
                    playButton.addEventListener('click', startGame);
                    
                    // Add touch handlers for mobile
                    playButton.addEventListener('touchstart', (e) => {
                        e.preventDefault();
                        e.stopPropagation();
                        playButton.style.transform = 'scale(0.95)';
                    });
                    
                    playButton.addEventListener('touchend', (e) => {
                        e.preventDefault();
                        e.stopPropagation();
                        playButton.style.transform = 'scale(1)';
                        startGame();
                    });
                    
                    playButton.addEventListener('touchcancel', (e) => {
                        e.preventDefault();
                        playButton.style.transform = 'scale(1)';
                    });
                }
            });
        }

    </script>
</body>
</html>
