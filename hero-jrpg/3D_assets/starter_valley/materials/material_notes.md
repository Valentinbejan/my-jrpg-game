# Material treatment

The source pack is `textures/Texture_Pack_by_Lynocs` at the game project root. Its rendered preview images were not used. Source selection uses the actual `*_diffuseOriginal` files. Original files remain untouched.

The adopted palette contains roof variants 1/2, Indoor Walls 5, Stone Wall 1, Wood Planks 2/3, Tree Bark 5, Bush_Hedge 1/2, Grass 2, Mud 1, Cobble Stone 1, Cave Wall 1, Water 3, and Metal Plates 1. Exact source filenames and derived PNG settings are in `../textures/sources.json`.

Derived maps are at most 1024 × 1024. Saturation, contrast, and brightness were adjusted to reduce clashes between pack categories. Leaf, flower foliage, and grass maps receive green-biased RGB multiplication; grass also receives a 1.2 px blur to quiet fine detail. These are transformations of supplied artwork. No replacement texture artwork was generated.

Most materials use roughness 0.88 and low specular response. Metal uses a modest metallic value; glass and water use lower roughness. The glass material is a dark painted window surface. The pack has no cloth category: sacks and flower colors reuse a subdued Indoor Walls diffuse derivative, with warm brown, yellow, or lavender multiplication. Additional baked variants lighten arch stones and tint orchard fruit. Those variants are packed in the sources and embedded in the GLBs.

Normal and smoothness maps are intentionally unused in this painted treatment. There is no normal-map green-channel convention or smoothness-to-roughness conversion involved. Modeled bevels, recesses, eaves, branches, and supports supply surface depth.

UVs are explicit. Beams/planks align the long axis with wood grain; roof courses follow the slopes; masonry and wall faces use consistent world-scale planar projections. Wood repeats use approximately 2 m along grain and 1.2 m across it; large terrain surfaces use 6 m repeats. Organic crowns and trunks use separate wrapped UVs. Close inspections were made for stretching, particularly roofs, angled braces, bridge arches, and tree branches.

In Godot, asset scene wrappers use shared materials from this directory. `river.gdshader` scrolls the supplied Water 3 derivative and adds small vertex ripples; it is a visual surface rather than a fluid simulation. The cascade has a modeled drop and stone edges, raised upstream of the mill to meet the river at its lower end.

If changing a standard shared texture for the whole kit, edit the derived PNG in `textures/`, then update and repack that image in affected Blender sources. If giving one asset a unique treatment, give the new material a unique name so the shared-material rebuild preserves the distinction. The export helper preserves source texture edits; the Godot builder explicitly uses the standard palette PNGs for standard `Valley_*` names.
