# Fantasy RPG — Overworld, Towns, and Explorable Locations

**Updated:** 2026-09-21  
**Status:** Confirmed by the creator.  
**Related documents:** [World and level plan](fantasy-rpg-world-and-level-plan.md), [art direction](fantasy-rpg-world-art-direction.md), [systems reference](fantasy-rpg-systems.md).

This document records the creator's clarification after reviewing the starter valley and providing a reference screenshot. It governs how locations are represented and entered. Where older plans imply that ordinary towns must be fully explorable 3D settlements, this clarification takes precedence.

## 1. The large overworld

The player runs around a large, explorable 3D world map connecting regions, towns, dungeons, and other destinations. It is a navigable landscape, not just a destination-selection screen.

Its scale is deliberately compressed and stylized. The player character is large relative to the miniature buildings representing a settlement. A small cluster of buildings can represent an entire town. Roads, terrain, vegetation, and landmarks communicate the larger geography without reproducing every location at realistic scale.

The supplied reference illustrates this relationship: the character runs beside a miniature settlement on a grassy landscape. The cluster represents a destination, rather than a set of full-size buildings the character is expected to walk through.

## 2. Towns are usually interfaces

Entering an ordinary town generally opens a GUI rather than a separate explorable 3D town scene. Town activities include:

- Healing.
- Leveling up and character-development activities.
- Talking with characters through dialogue and character presentation in the interface.
- Other town services through menus, as defined by the creator.

The miniature settlement on the overworld represents the town and its entry point. The player returns to the overworld when leaving the town interface.

This is the usual town structure. Specific exceptions can be decided later; do not automatically plan explorable streets and interiors for every settlement.

## 3. Dungeons and adventure areas are separate 3D locations

Entering a dungeon or adventure location from the overworld loads a separate, detailed 3D environment. The player explores its local paths and spaces and can fight enemies there.

These locations use a local scale suited to character movement, buildings, bridges, passages, and encounters. Their appearance is not restricted to underground dungeons: a forest, ruin, valley, or settlement can serve the same gameplay role.

Leaving the local area returns the player to the larger overworld. The detailed area is represented there by a much smaller entrance or landmark.

## 4. How the existing starter valley fits

The Reedbridge–Millbrook scene already created in `3D_assets/starter_valley/` is a detailed, explorable local environment. Treat it as an adventure/combat area—functionally a dungeon—even though it contains a town-like settlement, a river, and surrounding countryside.

Its buildings and paths are appropriate for exploring at local scale. Combat is an intended use of this environment; the delivered asset preview does not yet implement enemies or combat.

The existing scene is not the large overworld itself. When the player leaves it, they should return to the larger world map. A separate miniature representation or landmark should identify this area on that map.

## 5. Main transitions

| Starting place | Entering a destination | Leaving it |
|---|---|---|
| 3D overworld | Town interface for services and conversations | Return to the overworld |
| 3D overworld | Separate explorable 3D dungeon/adventure area | Return to the overworld |

## 6. Guidance for future planning and asset work

- Distinguish overworld landmark assets from local exploration assets before modeling or laying out a scene.
- Build overworld towns as compact, recognizable miniature compositions. Prioritize their silhouette and readability beside the comparatively large player character.
- Use detailed local environments for locations intended to support exploration and encounters.
- Do not interpret a place being called a town, village, or district as a requirement for a full 3D service-town environment.
- Preserve the existing starter valley as a local environment; develop the larger overworld as a separate layer.
- Keep the colorful, painted visual direction consistent across both scales, using the supplied textures.

The later Green River Valley implementation plan establishes a 1.8-unit player, a 2.4-unit cottage marker, and explicit E interaction. Overworld encounter rules and authored content remain future work. The creator retains ownership of story, characters, and quests.

## 7. Playable implementation — 2026-09-30

The separate [Green River Valley overworld](3D_assets/green_river_overworld/README.md) is now the project starting scene. One cottage represents the combined Reedbridge–Millbrook adventure. Five other towns open name-and-return screens; nine unbuilt dungeons and five neighboring-region exits explicitly show their unavailable status. The detailed valley is entered and left through a playable wrapper that preserves its original environment preview.

New assets each have independent editable Blender sources, packed supplied textures, matching GLBs and Godot scenes. See the [delivery manifest](3D_assets/green_river_overworld/asset_manifest.md) and [review report](3D_assets/green_river_overworld/review/critique_report.md) for the implementation and verification record.
