#  Dying Lens

[![Godot Version](https://img.shields.io/badge/Godot-4.x-blue?logo=godot-engine&logoColor=white)](https://godotengine.org)
[![Platform](https://img.shields.io/badge/Platform-PC%20/%20Web-green)](https://godotengine.org)

Traverse an ever-changing mountain using cameras.

---

##  How to Play


### **Installation / Execution**
*   **Web Build:** [Insert Link to itch.io page if applicable]
*   **Desktop Execution:** Download the latest release from the **Releases** tab, extract the ZIP file, and run `[GameName].exe`.

### **Controls**
*   `A, D` / `Left and right arrow keys`: Move character
*   `Spacebar / Up arrow key`: Jump
*   `Left Click`: 

---

## Production Team & System Ownership

### **Katherine Shereshevsky — Narrative and Visual Direction Lead**
*   **System Ownership:** Character art, background art, NPC dialogue.
*   **Key Deliverables:** 
    *   All 2D assets (interactable and non-interactable)
    *  Narrative and world building
    * Story research

### **Ololade Awosanya — [task] Lead**
*   **System Ownership:** AI Entities, Hazard Boundaries, & Level Layout.
*   **Key Deliverables:**
    *   `enemy_spawner.gd`: Manages timer-based enemy instantiation outside the viewport.
    *   `enemy_chase.gd`: Implements basic look-at target vector pathing toward the player.
    *   Environment static bodies, kill-zones, and boundary layouts.

### **May Zar — [task] Lead**
*   **System Ownership:** UI Canvas Systems, State Preservation, & Interface Flows.
*   **Key Deliverables:**
    *   `game_manager.gd`: Coordinates global win/loss checks, score increments, and scene reloads.
    *   `hud.gd`: Updates score text strings and monitors user button click loops.
    *   Main menu architecture, scene transition logic, and game-over screens.

---

## Known Issues
Documenting the known bugs so players don't get scared.

*   **Bug 1:** Describe any current unpatched edge cases (e.g., "If the player hits a corner wall at a exact 45-degree angle, they can occasionally jitter through the boundary static body.").
*   **Git Conflict Resolution:** Briefly explain how your team handled a major architectural or merge issue during development.

---

## Third-Party Asset Attributions
We would like to recognize the following creators for their open-source contributions:
* **Art:**
    * `[Pack Title]` by [Creator Name] ([Link])
* **Audio:**
    * `[Track/SFX Name]` by [Creator Name] ([Link])
* **Fonts:**
    * `[Font Name]` by [Creator Name] ([Link])
