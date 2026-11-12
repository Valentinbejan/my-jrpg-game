# Supplied painted textures

The asset kit uses the supplied Lynocs diffuse maps. Original BMP maps remain in the project's texture pack. `textures/sources.json` records the adopted originals and the starter kit's PNG conversions; pack preview renders are not used as surface textures.

`textures/overworld_adjustments.json` records the new derived grass, path and hill-rock palette. Grass retains the supplied painted pattern at reduced contrast, with a greener base and 2-pixel blur. Earth and rock retain their painted details with reduced contrast. The miniature destination roofs, plaster, wood, foliage and stone reuse the original starter materials.

The mannequin's coat, skin, hair, trousers, eyes and boots use packed tinted copies of the supplied cloth map. The dark recesses in cave, quarry and aqueduct use a packed darkened bark map. These derived copies are embedded in their GLBs and Blender sources.

Surfaces are matte except the mildly reflective water and metal. No normal or smoothness maps are used in this painted pass; modeled depth and geometry supply the shading. No unverified normal orientation or smoothness conversion enters the build. Wood supports retain lengthwise grain, masonry uses face UVs, and terrain/path/water use mapped world dimensions.

Godot's shared water material uses the supplied water map with scrolling UVs and a small vertex wave. Its surface has no walking collision. The two ponds share that water material. The player floor probe keeps movement on land and bridge decks.

