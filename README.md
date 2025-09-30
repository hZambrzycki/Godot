# 🎮 Godot Gameplay Starter (GDScript)

A modular **Godot** starter that bundles common gameplay systems: NPCs & Enemies, Items & Inventory, Interactables, reusable UI (HUD), and shared global logic. Written in **GDScript** and organized by feature.

> Open `project.godot` in Godot to explore the scenes and scripts.

---

##  Features

- **NPCs & Enemies** — base behaviors ready to extend.
- **Items & Inventory** — pick-up, store, and consume/equip items.
- **Interactables** — plug new interactions via nodes/interfaces.
- **GUI/HUD** — health/attributes/inventory bindings.
- **Globals & General Nodes** — shared signals, helpers, and reusable nodes.
- **Scenes** — feature-focused scenes to test systems in isolation.

---

##  Project Structure

00_Globals/ # global singletons, shared signals, constants
01_Npc/ # NPC logic/helpers
Enemies/ # enemy actors extending common base
Inventory/ # inventory data & UI glue
Items/ # item definitions / behavior
Interactables/ # switches, chests, doors, etc.
GUI/ # HUD & widgets
GeneralNodes/ # reusable nodes (timers, spawners, etc.)
Scenes/ # test/play scenes
Scripts/ # generic scripts and utilities
Assets/ # art/audio/fonts (if any)
project.godot # Godot project file

_All code is in **GDScript**._

##  Typical Flows

- **Interact → Item → Inventory → HUD update**  
  Use interactable nodes to grant items; inventory emits signals to refresh UI.
- **Enemy hit → Attributes → HUD**  
  Damage applies to shared attributes and the HUD reflects changes.

---

##  Dev Notes

- Prefer signals and small nodes over large God Objects.
- Keep scene trees shallow; split logic into **Scripts/** helpers.
- Expose tunables via exported variables for designer-friendly tweaking.

---
