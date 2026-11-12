# Fantasy Party RPG — World and Level Design Plan

**Version:** 0.1  
**Updated:** 2026-09-19  
**Status:** Proposed world blueprint; names and quantities remain editable.  
**Companion document:** `fantasy-rpg-systems.md`

**Confirmed location structure (2026-09-21):** Read [Overworld, towns, and explorable locations](fantasy-rpg-overworld-and-location-structure.md) before planning scenes. The overworld uses miniature settlement representations; ordinary towns usually open a GUI, while dungeons/adventure areas are separate explorable 3D locations. This clarification takes precedence over older assumptions about explorable towns below.

## 1. Purpose and boundaries

Build a large, colorful, interconnected fantasy realm whose regions contain enough distinct places, activities, and discoveries to sustain repeated exploration. Use simple stylized 3D environments and detailed 2D portrait presentation, with the freedom to approach regions through several routes.

This plan covers geography, settlements, dungeons, local layouts, traversal, mechanical exploration activities, encounters, rewards, environmental presentation, and production order.

**The creator owns all story and companion design.** This document does not assign companions, recruitment events, romances, characters, dialogue, factions, histories, plot outcomes, main quests, or side quests. Named places are working level-design labels. Religious, royal, and historical-looking structures do not establish who built them or what they mean. Service roles describe gameplay functions, not authored NPCs.

Earlier example questlines are not included. The creator can later place their own narrative content into the spaces planned here.

### 1.1 What carries forward

- Fifteen connected regions, including separate tundra and glacier regions, a desert, and the original six regions.
- A network of thirty interregional routes: land paths, boat connections, and unlockable underground shortcuts.
- Broad access with meaningful route choices, landmarks, vertical exploration, and permanent shortcuts.
- Multiple settlements and dungeons within a region; dense urban areas and remote wilderness use different population patterns.
- Equipment and ability discoveries that support the existing character-growth and fixed-affinity systems.

### 1.2 Working assumptions

The layouts assume free movement through an elevated-camera 3D field and turn-based party encounters. Exact combat format, movement speed, jump/climb controls, fast travel, and field hazards remain adjustable. Plan paths using ramps, stairs, bridges, and interaction points so the world does not depend on precision platforming.

This is the full-world content plan, not a production estimate. The named inventory is a candidate backlog. Its density should be tested in a complete region before committing equal production effort across the realm.

## 2. World geography and connections

### 2.1 Overall shape

The Green River Valley is the proposed starting region and central lowland. The coast lies west, the old capital east, and the highlands north. Forest covers the northwest approaches, while wetlands spread to the south.

Beyond the forest is open tundra. The permanent glacier occupies the northern heights. Volcanic terrain adjoins its eastern edge, allowing a transition through steam fields and geothermal tunnels.

The highlands form the principal mountain spine. Drier eastern grasslands lead toward the southeastern desert. Canyons connect the wet southern lands to the desert and salt basin. The warm southwestern jungle reaches the sea through a river landing; offshore islands connect that landing to the western port.

The arrangement is schematic. Distances, landmass outlines, drainage, and elevation will be resolved when individual maps are blocked out.

| Region | Relative position | Main settlement or rest anchor | Spatial identity |
| --- | --- | --- | --- |
| Green River Valley | Center | Reedbridge | Rivers, farms, bridges, hill fortress, aqueducts |
| Elderwood Forest | Northwest of the valley | Rootcross | Dense woodland, roots, ravines, canopy platforms |
| Sapphire Coast | West | Tidehaven | Harbors, cliffs, beaches, sea caves |
| Greyspine Highlands | Central north | Ironstep | Mountain passes, quarries, vertical shafts |
| Old Capital | East of the valley | Crownward | Inhabited outer city, layered inner districts |
| Reedwater Marsh | South of the valley | Stiltmarket | Raised walkways, causeways, channels, submerged ruins |
| Northwind Tundra | Far northwest | Hearthfen | Open cold grasslands, shallow valleys, buried structures |
| Glasscrown Glacier | Northern heights | Last Hearth | Permanent ice, crevasses, exposed buried architecture |
| Ashen Reach | Northeast | Emberwatch | Basalt terraces, geothermal basins, industrial interiors |
| Windscar Steppe | East of the mountains | Wayfarer's Rest | Dry grasslands, ridgelines, caravan roads |
| Saffron Desert | Southeast | Amberwell | Dunes, rock corridors, oases, buried complexes |
| Redstone Canyons | Southern escarpments | Spanmarket | Rim paths, bridges, ledges, deep river cuts |
| Saltglass Basin | South of the desert | Brinegate | Salt flats, mineral pools, sinkholes, underground vaults |
| Verdant Basin | Southwest | Canopy Crossing | Jungle, waterfalls, river terraces, elevated paths |
| Lantern Isles | Offshore southwest | Beaconport | Island circuits, tidal shelves, harbor connections |

### 2.2 Authoritative route register

All routes are bidirectional once available. Land routes may be dangerous but are not currently locked behind story progress. Boat routes connect fixed landings and do not require a sailing simulation. Shortcuts open through local exploration mechanisms and remain open.

| ID | Connection | Route | Access / opening rule |
| --- | --- | --- | --- |
| R01 | Northwind Tundra ↔ Glasscrown Glacier | Frozen-lake traverse | Surface route; traversable without a story unlock. |
| R02 | Northwind Tundra ↔ Elderwood Forest | Treeline road | Surface route; traversable without a story unlock. |
| R03 | Northwind Tundra ↔ Greyspine Highlands | Old northern pass | Surface route; traversable without a story unlock. |
| R04 | Glasscrown Glacier ↔ Greyspine Highlands | Southern glacier approach | Surface route; traversable without a story unlock. |
| R05 | Glasscrown Glacier ↔ Ashen Reach | Geothermal service tunnels | Open the sealed passage from Furnace Abbey. |
| R06 | Ashen Reach ↔ Windscar Steppe | Basalt road | Surface route; traversable without a story unlock. |
| R07 | Ashen Reach ↔ Greyspine Highlands | Obsidian ridge trail | Surface route; traversable without a story unlock. |
| R08 | Elderwood Forest ↔ Greyspine Highlands | Hunter's pass | Surface route; traversable without a story unlock. |
| R09 | Elderwood Forest ↔ Green River Valley | Woodland river trail | Surface route; traversable without a story unlock. |
| R10 | Elderwood Forest ↔ Sapphire Coast | Lumber road | Surface route; traversable without a story unlock. |
| R11 | Greyspine Highlands ↔ Windscar Steppe | Eastern plateau crossing | Surface route; traversable without a story unlock. |
| R12 | Greyspine Highlands ↔ Green River Valley | Pilgrim steps | Surface route; traversable without a story unlock. |
| R13 | Greyspine Highlands ↔ Old Capital | Mine lift to the capital foundations | Activate the lift from the Deep Forge. |
| R14 | Windscar Steppe ↔ Old Capital | Caravan road | Surface route; traversable without a story unlock. |
| R15 | Windscar Steppe ↔ Saffron Desert | Eastern caravan bypass | Surface route; traversable without a story unlock. |
| R16 | Sapphire Coast ↔ Green River Valley | Market road | Surface route; traversable without a story unlock. |
| R17 | Sapphire Coast ↔ Lantern Isles | Tidehaven–Beaconport ferry | Fixed boat service; available when either landing is reached. |
| R18 | Sapphire Coast ↔ Reedwater Marsh | Estuary causeway | Surface route; traversable without a story unlock. |
| R19 | Green River Valley ↔ Old Capital | Old royal road | Surface route; traversable without a story unlock. |
| R20 | Green River Valley ↔ Old Capital | Restored aqueduct passage | Drain the lower passage from the Royal Aqueduct. |
| R21 | Green River Valley ↔ Reedwater Marsh | Southern river road | Surface route; traversable without a story unlock. |
| R22 | Old Capital ↔ Saffron Desert | Oasis trade road | Surface route; traversable without a story unlock. |
| R23 | Old Capital ↔ Redstone Canyons | Royal tomb stair | Unseal the upper exit from the Cliffside Necropolis. |
| R24 | Reedwater Marsh ↔ Redstone Canyons | Ancient escarpment road | Surface route; traversable without a story unlock. |
| R25 | Reedwater Marsh ↔ Verdant Basin | Riverbank trail | Surface route; traversable without a story unlock. |
| R26 | Lantern Isles ↔ Verdant Basin | Southern coastal passage | Fixed boat service; available when either landing is reached. |
| R27 | Verdant Basin ↔ Redstone Canyons | Waterfall stairway | Surface route; traversable without a story unlock. |
| R28 | Redstone Canyons ↔ Saltglass Basin | Dry riverbed | Surface route; traversable without a story unlock. |
| R29 | Redstone Canyons ↔ Saffron Desert | Redstone ravine pass | Surface route; traversable without a story unlock. |
| R30 | Saffron Desert ↔ Saltglass Basin | Dune-edge trail | Surface route; traversable without a story unlock. |

The two valley–capital entries are intentionally distinct: the surface road provides initial access, while the aqueduct creates a shorter underground alternative. No line crossing in the schematic implies another junction or settlement.

### 2.3 Travel loops

| Loop | Circuit | Purpose |
| --- | --- | --- |
| Opening | Valley → Forest → Highlands → Valley | Establish alternate approaches early. |
| Western | Valley → Coast → Forest → Valley | Connect trade roads, cliff approaches, and woodland trails. |
| Northern | Forest → Tundra → Glacier → Highlands → Forest | Connect cold regions without making the glacier a dead end. |
| Geothermal | Glacier → Ashlands → Highlands → Glacier | A compact northern loop after the service tunnels open. |
| Southern | Coast → Isles → Jungle → Marsh → Valley → Coast | Combine land and fixed boat travel. |
| Eastern | Highlands → Steppe → Desert → Canyons → Capital → Highlands | Long circuit shortened by dungeon discoveries. |
| Drylands | Desert → Canyons → Salt Basin → Desert | Three different dry environments with separate entrances. |

The steppe–desert bypass lets players reach the desert without completing content inside the capital. Shortcut locks change travel efficiency rather than sealing off whole regions.

## 3. Content scale and density

### 3.1 Four levels of place

| Level | Definition | Minimum purpose |
| --- | --- | --- |
| Region | A broad landscape with several districts. | Multiple entrances, a recognizable identity, and several substantial destinations. |
| District | A coherent portion of a region. | A landmark, local route choices, and an identifiable activity or terrain pattern. |
| Destination | A settlement, dungeon, or substantial outdoor site. | Something worth reaching and a reason to inspect its surroundings. |
| Discovery | A compact optional find along or away from a route. | A useful reward, mechanical interaction, visual surprise, or navigational insight. |

Major dungeons have branching routes, an internal shortcut, optional space, and a substantial mechanical challenge. Side dungeons are shorter, with one clear idea and at least one meaningful route or tactical decision. A simple cave with a single find belongs in the discovery layer rather than being advertised as another substantial dungeon.

### 3.2 How a place feels larger

1. Show an outer landmark from the field before revealing its full extent.
2. Give it an exterior, interior, and selected lower or upper spaces.
3. Connect some of those spaces to a different approach on the field.
4. Place optional rooms beyond the obvious objective or central mechanism.
5. Let a permanent shortcut, opened service, or discovered route change future visits.

Do not add every layer to every destination. A peaceful overlook can remain small; its contrast helps a fortress, mine, or city feel substantial.

### 3.3 Starting pacing targets

These are prototype targets, not promised playtimes:

- A traveled field route should usually reveal a new visual cue or optional spur within roughly 40–90 seconds of uninterrupted movement.
- A short exploratory diversion should normally produce a recognizable payoff within 3–8 minutes, with combat duration measured separately.
- Side dungeons can initially target 10–25 minutes of exploration and encounters.
- Major dungeons can initially target 45–90 minutes for a first thorough visit, divided by useful shortcuts and resting opportunities.
- Roads between settlements should provide quiet stretches as well as encounters. Scenic distance and danger should be deliberate.

Measure time spent walking, fighting, managing menus, and examining the environment separately. Tune the targets after the actual combat and movement systems exist.

### 3.4 Counting rules

The regional tables below form the initial candidate inventory. A town district is not counted as another town. A dungeon with three entrances is one dungeon. A larger complex and its attached lower floor are one major dungeon unless explicitly listed as separate experiences. Camps and waystations are identified separately from permanent towns and villages.

| Region | Settlement / camp entries | Major dungeons | Side dungeons | Small discoveries |
| --- | ---: | ---: | ---: | ---: |
| Green River Valley | 7 | 3 | 6 | 8 |
| Elderwood Forest | 4 | 2 | 6 | 6 |
| Sapphire Coast | 6 | 2 | 6 | 6 |
| Greyspine Highlands | 5 | 3 | 6 | 6 |
| Old Capital | 4 | 3 | 7 | 6 |
| Reedwater Marsh | 5 | 2 | 6 | 6 |
| Northwind Tundra | 4 | 2 | 5 | 6 |
| Glasscrown Glacier | 3 | 2 | 5 | 6 |
| Ashen Reach | 4 | 2 | 5 | 6 |
| Windscar Steppe | 5 | 2 | 6 | 6 |
| Saffron Desert | 5 | 3 | 7 | 6 |
| Redstone Canyons | 4 | 2 | 6 | 6 |
| Saltglass Basin | 3 | 2 | 5 | 6 |
| Verdant Basin | 4 | 2 | 6 | 6 |
| Lantern Isles | 4 | 2 | 6 | 6 |
| **Total** | **67** | **34** | **88** | **92** |

This inventory contains **67 settlement or camp entries, 122 dungeons, and 92 small discoveries**. Settlement entries include towns, villages, camps, refuges, and waystations; they are not all towns of the same size. This is a proposed full-world inventory rather than a commitment to build every entry before testing the first region.

## 4. Regional content plans

Every regional entry provides a buildable non-narrative content mix. Dungeon rewards and encounter roles are categories; exact items, enemy identities, and authored meaning remain unassigned.

### 4.1 Green River Valley

**Purpose:** The most approachable example of the game's full exploration structure. Farms and roads make orientation easy, while hills and underground passages reveal greater depth.

**Districts:** River crossing; orchard country; northern foothills; eastern royal road; southern lowlands; underground waterworks.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Reedbridge | Main town | General equipment, storage, rest, map access, river crossing. |
| Stoneford | Small quarry town | Heavy equipment and reinforcement services. |
| Eastwatch | Road town | Supplies and a rest point before the capital approaches. |
| Applemead | Farming village | Basic supplies and an orchard-path junction. |
| Millbrook | Mill village | River crossing and access to waterworks. |
| Willowbank | Fishing village | Waterside materials and lowland rest. |
| Harthill | Hill village | A safe approach to the northern trails. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Royal Aqueduct | Enter through an exterior inspection door below the Toll Fortress; use spillways and galleries to drain the lower route. This separate complex opens R20 toward the capital without requiring fortress completion. |
| Major | Toll Fortress | Gatehouse, wall walk, courtyard, and supply passage provide three approaches; a portcullis creates the return shortcut. |
| Major | Orchard Estate | Explore garden walls, house wings, cellars, and a conservatory; open locked service corridors from inside. |
| Side | Mill Cellar | A short flooded loop with a wheel-operated bridge and visible treasure alcove. |
| Side | Quarry Galleries | Choose an exposed ledge or a longer supported tunnel; exit above the entrance. |
| Side | Roadside Burial Chambers | A compact chamber network using door positions and line-of-sight clues. |
| Side | Bridge Undercroft | Enter from either riverbank; lower a ladder to create a local crossing. |
| Side | Root-Hollow Cave | Two entrances at different heights, with one concealed from the road. |
| Side | Ruined Watchtower | A vertical stair loop, roof lookout, and short lower chamber. |

**Other discoveries:** Island shrine; collapsed cart shelter; orchard clearing; river cave mouth; hilltop camp; abandoned waterwheel; lookout platform; isolated treasure ledge.

**Local loop:** Reedbridge → Applemead → Millbrook → Willowbank → Reedbridge, using both banks and an unlockable footbridge. The aqueduct is a separate interregional shortcut.

**Encounter and reward emphasis:** Readable mixed groups, guards that teach defensive counters, equipment covering several build types, and small quantities of early reinforcement materials. Keep the main road useful for repeat travel.

### 4.2 Elderwood Forest

**Purpose:** Dense woodland with understandable landmarks and routes at ground, root, and canopy height.

**Districts:** Logging fringe; great-tree groves; ravine floor; canopy shelves; temple roots.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Rootcross | Main woodland town | Rest, equipment, and the main path junction. |
| Highbough | Small elevated town | Access to canopy paths and ranged-equipment services. |
| Mossbridge | Village | A reliable ravine crossing. |
| Lantern Hollow | Village | Supplies near the northern treeline road. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Rootbound Temple | Roots split the building into upper and lower wings; reopen a central stair and emerge on a second forest path. |
| Major | Canopy Hall | Platforms around several huge trunks; connected interiors provide sheltered alternatives to exposed walkways. |
| Side | Hollow Trunk | Spiral interior with openings onto two canopy levels. |
| Side | Ravine Grotto | A low route whose upper exit becomes visible from the return path. |
| Side | Overgrown Lodge | Rooms, garden, and cellar form a compact searchable loop. |
| Side | Root Cistern | Redirect a shallow flow to reach lower shelves. |
| Side | Broken Sawmill | Restore a movable walkway using local controls. |
| Side | Moss Archive | Small ruined chambers with a deliberate observation puzzle. |

**Other discoveries:** Quiet pool; giant fallen tree bridge; hidden garden; resin grove; marked overlook; canopy cache.

**Local loop:** Rootcross → ravine crossing → Highbough → canopy descent → logging fringe → Rootcross. Distinct tree shapes and distant cliffs provide bearings.

**Encounter and reward emphasis:** Concealment, mixed ranged and close-pressure groups, utility techniques, light equipment, and accessories. Dense foliage must not hide exits or encounter boundaries from the camera.

### 4.3 Sapphire Coast

**Purpose:** Long coastal views with dense content folded into cliffs, beaches, harbor structures, and sea caves.

**Districts:** Tidehaven harbor; western cliffs; fishing shore; estuary; fortress headland.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Tidehaven | Main port | Equipment, storage, rest, and the R17 island ferry. |
| Cliffhaven | Small town | An upper-coast rest point and equipment services. |
| Gullpoint | Fishing village | Beach access and supplies. |
| Oysterbank | Fishing village | Estuary crossing and material trade. |
| Lowtide | Fishing village | Access to shoreline caves. |
| Beacon Road | Waystation | A safe cliff-path stop near the lighthouse. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Flooded Sea Keep | Explore battlements and partially submerged lower levels; a local sluice links the two entrances. |
| Major | Cliff Arsenal | Stacked storage halls and a lift connect beach and headland approaches. |
| Side | Lighthouse Interior | Climb between service rooms and exterior landings; open a fast return stair. |
| Side | Wreck Cavern | Enter through the cave or exposed hull; passages reconnect around a central chamber. |
| Side | Saltwater Cistern | Use a local pump to expose a lower cache route. |
| Side | Harbor Undercroft | Compact tunnels with exits on opposite sides of the docks. |
| Side | Cliff Chapel | A small vertical building with an optional lower chamber. |
| Side | Coastal Storehouse | Exterior balconies and interior rooms provide alternate approaches. |

**Other discoveries:** Reef lookout; sheltered inlet; stranded hull; sea-stack bridge; beach cache; abandoned signal platform.

**Local loop:** Tidehaven → cliff road → lighthouse → beach descent → Lowtide → harbor. Tide-themed puzzles use local mechanisms or clearly forecast states, with no mandatory real-time waiting.

**Encounter and reward emphasis:** Water-aligned threats alongside physical defenders and other affinities; water protection, ranged weapons, and item combinations useful on coastal routes.

### 4.4 Greyspine Highlands

**Purpose:** The world's strongest vertical region, with mountain-scale landmarks and mining infrastructure that explains its shortcuts.

**Districts:** Quarry terraces; Ironstep basin; monastery ridge; high lakes; northern passes; deep shafts.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Ironstep | Main mining town | Reinforcement, heavy equipment, storage, and rest. |
| Bellpass | Monastery settlement | A service court and safe ridge crossing; cultural meaning is reserved. |
| Slatecross | Village | Access to quarry routes. |
| Highmere | Village | A rest point beside the upper lakes. |
| Northgate | Outpost | Supplies before tundra and glacier approaches. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Deep Forge | Terraced workshops, shafts, and counterweight lifts; activate R13 to the capital foundations. |
| Major | Ridge Monastery | Courtyards and stacked interiors connect two mountain paths through an internal stair loop. |
| Major | Highlake Dam | Cross the crest, descend through inspection galleries, and reopen a service elevator. |
| Side | Counterweight Mine | A lift-position puzzle with clearly marked safe landings. |
| Side | Hanging Storehouse | A compact structure reached from upper and lower bridges. |
| Side | Scree Cavern | Winding tunnels return to a high shelf above the approach. |
| Side | Quarry Reservoir | A short ledge circuit around a deep chamber. |
| Side | Pass Watchtower | Interior and exterior stairs provide two approaches. |
| Side | Old Ventilation Shaft | Descend around a central shaft and unlock a direct return lift. |

**Other discoveries:** Summit lookout; hot spring; abandoned rail spur; quarry shelf; rope-bridge cache; high-lake island.

**Local loop:** Ironstep → quarry terraces → Highmere → monastery ridge → repaired public lift → Ironstep. Keep distant routes visible before the player can reach them.

**Encounter and reward emphasis:** Guard breaking, endurance, ranged pressure from protected groups, and heavy-equipment combinations. Traversal uses supported paths and interactable climbs rather than mandatory precision jumps.

### 4.5 Old Capital

**Purpose:** Extreme local density. One city contains streets, interiors, roofs, gardens, utility passages, and large enclosed complexes.

**Districts:** Crownward market; warehouse waterfront; estate terraces; academy quarter; palace approaches; lower foundations.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Crownward | Inhabited city hub | Several service clusters, storage, rest, and multiple district entrances. |
| Eastgate | Satellite town | Supplies on the steppe and desert roads. |
| Gardenbank | Village | A quiet outer rest point and garden-path junction. |
| Stonewharf | Village | A lower entrance near river and utility routes. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Sealed Palace | Interlocking courtyards, galleries, and service stairs; several interior gates create permanent circulation loops. |
| Major | Abandoned Academy | Teaching halls, testing rooms, library floors, and roof access; local apparatus changes selected room routes. |
| Major | Lower Foundations | A legible underground district linking the aqueduct, mine-lift landing, and tomb stair without merging their unlocks. |
| Side | Roof Conservatory | Interior stairs lead to a roof route overlooking earlier streets. |
| Side | Warehouse Vaults | Several compact storage wings with alternative door sequences. |
| Side | Bathhouse Cistern | Local water control exposes lower inspection rooms. |
| Side | Garden Mausoleum | A short loop beneath a public garden. |
| Side | Bell Tower | Vertical rooms, a lookout, and an internal return shortcut. |
| Side | Collapsed Archive | A compact search space with visible but initially awkward upper shelves. |
| Side | Service Sewer | A local district crossing that stays open after clearing its mechanism. |

**Other discoveries:** Balcony cache; rooftop garden; courtyard fountain mechanism; hidden stair; overlook plaza; closed workshop interior.

**Local loop:** Crownward → waterfront → estate terraces → academy edge → roof descent → Crownward. Keep major exterior circulation available independently of palace completion.

**Encounter and reward emphasis:** Mixed-affinity formations, specialist equipment, technique discoveries, and encounters that reward changing tactics between districts. The city remains navigable through safe outer streets.

### 4.6 Reedwater Marsh

**Purpose:** A network of raised paths and water channels where opening a crossing changes the usefulness of a whole district.

**Districts:** Stiltmarket platforms; reed channels; shrine islands; causeway ruins; submerged urban edge.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Stiltmarket | Main town | Rest, equipment, supplies, and central walkway junction. |
| Cairn Landing | Small town | A southern rest point near the escarpment road. |
| Reedhaven | Village | Supplies and dry paths through the northern marsh. |
| Eelcross | Village | A reliable channel crossing. |
| Willowisle | Village | A refuge among the island paths. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Sunken City | Rooftops serve as the first route; drainage machinery opens selected ground-floor and lower passages. |
| Major | Causeway Citadel | Approach by raised road or foundation walkway; open a bridge through the central structure. |
| Side | Bell Cistern | A compact vertical chamber with a ring-shaped ledge route. |
| Side | Reed Crypt | Short chambers entered through a dry mound. |
| Side | Sluice House | Local floodgates reveal a maintenance exit. |
| Side | Root Island Cave | Two dry entrances separated by a visible water channel. |
| Side | Abandoned Boathouse | Search loft, storage floor, and lower landing. |
| Side | Flooded Tollhouse | Raised outer path and drained inner rooms form a loop. |

**Other discoveries:** Shrine island; elevated bird platform; broken statue crossing; herb patch; causeway cache; mist-shrouded lookout.

**Local loop:** Stiltmarket → Eelcross → causeway → Cairn Landing → Willowisle → Stiltmarket. Provide raised-path alternatives around any slowing terrain.

**Encounter and reward emphasis:** Attrition management, defensive utility, and varied formations. Any poison, slowing, or visibility effect is a proposed status mechanic rather than an additional magic type.

### 4.7 Northwind Tundra

**Purpose:** Wide horizons and recognizable refuge points. Density concentrates around valleys, exposed ruins, and route intersections.

**Districts:** Treeline fringe; open grasslands; frozen-lake shore; barrow hills; hot-spring valley.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Hearthfen | Trading town | Rest, preparation supplies, and northern road junction. |
| Frostford | Village | A sheltered crossing between open fields and the lake. |
| Longgrass Camp | Seasonal camp site | A fixed service location even if its appearance changes later. |
| Springhaven | Refuge outpost | Rest and preparation before the higher cold routes. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Barrow of the Winter Kings | Several surface mounds join underground; opening the central chamber connects their entrances. |
| Major | Snowbound Relay Fort | Walls, drift-filled courtyards, and service corridors create exposed and sheltered approaches. |
| Side | Frozen Bank Cave | A shore entrance loops upward to the grassland edge. |
| Side | Buried Watchtower | Enter at its upper floor and work down toward a lower exit. |
| Side | Spring Cavern | Steam-filled chambers with clear visual landmarks. |
| Side | Stone-Ring Vault | A small observation puzzle below a recognizable surface ring. |
| Side | Icebound Storehouse | Search an interior loop with an optional lower storage room. |

**Other discoveries:** Standing-stone field; sheltered ridge camp; frozen ford; low hill cache; abandoned lookout; hot-spring pool.

**Local loop:** Hearthfen → Frostford → relay-fort approach → Springhaven → treeline road → Hearthfen. Preserve long views between destinations instead of covering every field with icons.

**Encounter and reward emphasis:** Preparation, survivability, and protecting vulnerable builds. If cold exposure is used, safe alternatives and basic protection are available before it becomes severe.

### 4.8 Glasscrown Glacier

**Purpose:** A distinct permanent-ice region with large vertical cuts and architecture exposed on several levels.

**Districts:** Lower ice approach; blue-ice canyon; palace exposure; observatory ridge; geothermal edge.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Last Hearth | Expedition camp | Main rest, supplies, and storage access. |
| Blueice Shelter | Refuge | A safe midpoint in the crevasse network. |
| Observatory Base | Field camp | Preparation before the highest dungeon approach. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Palace Under the Ice | Different cracks expose separate floors; reconnect wings through interior stairs and thaw-control mechanisms. |
| Major | Frozen Observatory | Exterior platforms and inner instrument halls connect ridge levels; operate a service lift for the return. |
| Side | Blueglass Caverns | Reflective surfaces reveal an otherwise hidden branch through viewpoint changes. |
| Side | Crevasse Chapel | A small structure split between two rock shelves. |
| Side | Ice Reservoir | Walk the upper ring, then expose a lower inspection gallery. |
| Side | Glacier Bore | A winding tunnel connects nearby ice terraces. |
| Side | Buried Lift Station | Restore a local lift from below to shorten the climb. |

**Other discoveries:** Icebound lake; exposed roofline; bridge overlook; steam fissure; frozen garden; shelter cache.

**Local loop:** Last Hearth → blue-ice canyon → palace edge → observatory ridge → restored lift → Last Hearth. R05 reaches the geothermal edge only after its passage is opened from Furnace Abbey.

**Encounter and reward emphasis:** Distinct safe positions on the field, burst pressure in battles, protective equipment, and rare techniques. Ice is an environmental presentation; any damage typing must use the existing eight-type system.

### 4.9 Ashen Reach

**Purpose:** A volcanic region whose terrain is navigable through basalt shelves, sheltered workings, and geothermal settlements.

**Districts:** Spring basin; basalt road; furnace terraces; obsidian ravines; glacier boundary.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Emberwatch | Main town | Rest, equipment, and geothermal-route junction. |
| Blackstone | Work town | Reinforcement services and material trade. |
| Fumarole Camp | Field camp | Supplies near the ravines. |
| Basalt Rest | Waystation | A safe pause on the steppe approach. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Furnace Abbey | Vent galleries, upper halls, and machinery rooms; open R05 toward the glacier from the lower service passage. |
| Major | Obsidian Foundry | Counterweight platforms join workshop tiers; a freight lift reconnects the exit to the entrance court. |
| Side | Ventworks | Redirect visible vent cycles to expose a sheltered path. |
| Side | Basalt Tube | A curved passage with upper shelves and a second field exit. |
| Side | Cooling Reservoir | Operate a local cooling mechanism to reach the lower ring. |
| Side | Ash-Buried Chapel | Enter through roof and doorway approaches that converge below. |
| Side | Slag Pit Galleries | Choose exposed ledges or longer enclosed passages. |

**Other discoveries:** Steam garden; obsidian overlook; mineral terrace; ruined signal mast; warm refuge cave; isolated kiln.

**Local loop:** Emberwatch → furnace terraces → Blackstone → ravine bridge → spring basin. Machinery shortcuts remain permanently usable after activation.

**Encounter and reward emphasis:** Fire pressure combined with physical and other-affinity threats. Offer protective and offensive build options without making fire immunity the sole answer to the region.

### 4.10 Windscar Steppe

**Purpose:** An open region with strong sightlines, several trade routes, and substantial destinations embedded in ridges and depressions.

**Districts:** Caravan plains; windmill belt; citadel rise; stone-circle uplands; eastern bypass.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Wayfarer's Rest | Main town | Rest, equipment, and route information. |
| Seven Wheels | Caravan town | Supply and item services on the eastern route. |
| Windmill Cross | Village | A local road junction. |
| Meadowford | Village | A protected river crossing. |
| Ridgewell | Waystation | Preparation before the desert bypass. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Stormwatch Citadel | Outer ramparts and inner halls provide exposed and sheltered routes; lower a bridge across the central gap. |
| Major | Understeppe Galleries | Multiple shallow entrances connect through a broad underground complex with distinct landmarks. |
| Side | Windmill Cellars | Linked machinery rooms below three nearby towers. |
| Side | Ridge Barrow | A short chamber loop with a secondary slope exit. |
| Side | Dry Culvert | An under-road crossing with optional side rooms. |
| Side | Caravan Store Vault | A compact storage complex with alternate entrances. |
| Side | Stone-Circle Chamber | Read surface alignment to locate an underground route. |
| Side | Abandoned Relay Tower | Climb for a lookout and unlock an interior stair. |

**Other discoveries:** Wind-carved arch; shallow lake; ridge camp; old milestone cluster; isolated windmill; grassland hollow.

**Local loop:** Wayfarer's Rest → Windmill Cross → citadel rise → Meadowford → main road. Keep R15 visible as an independent desert approach around the capital.

**Encounter and reward emphasis:** Visible patrol routes, optional strong field encounters, wind-related equipment, and practical supplies. The grasslands should have distinct silhouettes and depressions rather than uniformly distributed objects.

### 4.11 Saffron Desert

**Purpose:** A large dry region with separate dune, oasis, rock, and buried-building districts. Stable landmarks make navigation learnable.

**Districts:** Oasis chain; western rock corridors; central dune sea; sun-temple plateau; southern salt edge.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Amberwell | Main oasis town | Rest, general equipment, storage, and route junction. |
| Dunegate | Trade town | Supplies near the capital road. |
| Glasswell | Oasis village | A sheltered intermediate stop. |
| Sundial Rest | Caravanserai | Preparation on the steppe bypass. |
| Edgewell | Hamlet | Access to canyon and salt-basin routes. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Buried Sun Temple | Several exposed rooftops lead into a connected complex; reopen central stairs and an upper exit. |
| Major | Sandstone Reservoir | Descend around a large shaft using galleries, bridges, and local water-control equipment. |
| Major | Dune Bastion | Rock-wall, surface-gate, and lower-passage entrances support different approaches to the same interior. |
| Side | Fossil Cavern | A ribbed chamber layout with upper and lower paths. |
| Side | Oasis Cistern | Short waterworks beneath a public approach, with a separate lower cache. |
| Side | Buried Caravanserai | Enter through an exposed roof and reopen the exterior gate. |
| Side | Glass Grotto | Reflections and distinct formations guide a compact route puzzle. |
| Side | Dune Tomb | A short branching complex with an optional deeper room. |
| Side | Mesa Watchtower | An interior climb opens a return path to the plateau. |
| Side | Rock-Well Chambers | Connected rooms around a vertical access shaft. |

**Other discoveries:** Fossil field; sheltered arch; dune-top landmark; half-buried causeway; oasis garden; abandoned survey platform.

**Local loop:** Amberwell → Glasswell → rock corridor → temple plateau → Dunegate → Amberwell. Place dungeon entrances around more than one side of large structures.

**Encounter and reward emphasis:** Resource preparation, varied resistances, earth and light-themed equipment possibilities, and alternative weapon scaling. Heat and sand are field conditions, not newly added magic types.

### 4.12 Redstone Canyons

**Purpose:** A vertical connector region where rim, ledge, and floor routes offer different travel experiences.

**Districts:** Bridge settlement; northern escarpment; central chasm; cliff dwellings; dry-river outlet.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Spanmarket | Bridge town | Main services and upper-rim crossing. |
| Cliffhome | Village | Rest along the middle ledges. |
| Rillrest | Service outpost | Supplies on the canyon floor. |
| Mesa Camp | Field camp | Preparation near the desert pass. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Cliffside Necropolis | Exterior ledges and inner burial galleries interlock; unseal R23 toward the capital from the upper interior. |
| Major | Bridgeworks | Counterweight rooms, maintenance walkways, and towers surround a major crossing; restore its internal lift. |
| Side | Slot Canyon Vault | A narrow approach opens into a wider chamber network. |
| Side | Hanging Cistern | Descend from a settlement shelf and return through a separate stair. |
| Side | Rock Dwelling Cluster | Several compact interiors connect via exposed ledges. |
| Side | Dry River Tunnel | A sheltered alternative between nearby floor paths. |
| Side | Mesa Crypt | A branching small dungeon reached by a clear ramp route. |
| Side | Broken Winch Station | Restore a local elevator from its lower approach. |

**Other discoveries:** Natural arch; rope-bridge overlook; ledge cache; dry waterfall; plateau refuge; isolated rock garden.

**Local loop:** Spanmarket → rim path → Cliffhome → Rillrest → repaired winch → Spanmarket. Long exterior views should reveal alternate levels and entrances.

**Encounter and reward emphasis:** Distinct encounter arenas on broad ledges, armor-breaking tools, defensive accessories, and materials. Falls need readable edges and safe recovery rules appropriate to the chosen movement system.

### 4.13 Saltglass Basin

**Purpose:** A sparse-looking surface with concentrated discoveries around mineral formations, sinkholes, and structures below the flats.

**Districts:** Brinegate works; white flats; mineral pools; sinkhole belt; buried causeways.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Brinegate | Main settlement | Rest, trade, supplies, and basin-route junction. |
| Whitecross | Village | A salt-work service cluster near the western path. |
| Sinkwell | Outpost | Preparation before underground exploration. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Mirror Vault | Observation and reflected sightlines reveal door arrangements; chambers connect around a central shaft. |
| Major | Subsurface Saltworks | Salt crusts above and machinery below establish two route layers; restore a freight lift. |
| Side | Crystal Sinkhole | A spiral descent with several safe ledges and a short return shaft. |
| Side | Brine Pump House | A compact mechanism opens an inspection gallery. |
| Side | White Tomb | Several small chambers beneath an obvious surface marker. |
| Side | Buried Causeway Station | Enter from either end of an exposed road fragment. |
| Side | Mineral Grotto | A short branching cavern with visually distinct resource pockets. |

**Other discoveries:** Reflective pool; crystal field; half-buried tower; salt arch; isolated work platform; crust-edge cache.

**Local loop:** Brinegate → mineral pools → Sinkwell → buried causeway → Whitecross → Brinegate. Both the desert and canyon approaches remain useful.

**Encounter and reward emphasis:** Clear surface tells for hidden spaces, resistance equipment, and unusual modifiers. Observation puzzles must remain readable without relying only on color or bright bloom.

### 4.14 Verdant Basin

**Purpose:** A warm jungle with interlocking river, ground, and canopy routes and large structures partially absorbed into vegetation.

**Districts:** River-mouth landing; floodplain paths; waterfall terraces; canopy settlement; palace gardens.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Canopy Crossing | Main town | Rest, equipment, storage, and vertical path junction. |
| Fallhaven | Village | Services below the waterfall ascent. |
| Root Landing | River settlement | The inland approach to the R26 coastal boat landing. |
| High Canopy | Outpost | Preparation before elevated routes. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Rain Palace | Courtyards, irrigation galleries, and roof terraces reconnect through reopened stairs and drains. |
| Major | Cataract Works | Routes behind and beside a waterfall link upper and lower river terraces through machinery chambers. |
| Side | Fern-Hollow Cave | A low loop beneath a visible root arch. |
| Side | Canopy Shrine | Several upper platforms connect through a compact interior. |
| Side | Submerged Garden Rooms | Local drainage exposes a small lower-floor circuit. |
| Side | Root Cellar Complex | Adjacent collapsed buildings connect below ground. |
| Side | Falls Grotto | Enter at water level and emerge on a higher terrace. |
| Side | Irrigation Tower | A vertical service structure that opens a local return route. |

**Other discoveries:** Giant fern grove; waterfall overlook; old landing; root bridge; secluded pool; roof garden cache.

**Local loop:** Root Landing → floodplain → Canopy Crossing → waterfall terraces → Fallhaven → river path. Provide both elevated and ground alternatives through selected districts.

**Encounter and reward emphasis:** Mixed groups, preparation against status effects if implemented, recovery utility, and unusual equipment combinations. Manage foliage transparency so paths and interactables stay visible.

### 4.15 Lantern Isles

**Purpose:** Several substantial island maps connected by fixed transport and local crossings, giving the sea a role in world navigation.

**Districts:** Beaconport island; reef shallows; observatory island; storm-tower islets; southern landing.

| Settlement | Type | Gameplay function |
| --- | --- | --- |
| Beaconport | Main harbor | Rest, supplies, storage, and R17 ferry access. |
| Shellhaven | Fishing village | A sheltered local landing and rest stop. |
| Lantern Rest | Light-station outpost | Supplies near the northern islets. |
| Southwatch | Boat landing settlement | Departure toward the jungle through R26. |

| Scale | Dungeon | Layout and mechanical purpose |
| --- | --- | --- |
| Major | Tidal Observatory | Rotate or reposition local walkway machinery to connect observation halls and lower sea chambers. |
| Major | Reef Citadel | Exterior sea walls and interior galleries form an island-scale circuit with a restored harbor gate. |
| Side | Tidal Cave | Predictable local water states reveal alternative small paths. |
| Side | Lighthouse Vault | A short descent beneath a visible navigation landmark. |
| Side | Coral Chambers | A compact cave with a loop around a central pool. |
| Side | Wreck Interior | Enter from shore and emerge onto the opposite cove. |
| Side | Storm-Tower Cellar | An enclosed small dungeon under an exposed tower. |
| Side | Island Cistern | Restore a walkway across its upper chamber. |

**Other discoveries:** Reef lookout; empty inlet; tide-pool shelf; sea arch; hilltop signal platform; island garden.

**Local loop:** Beaconport → reef shore → observatory approach → Shellhaven → harbor circuit. Fixed boats link the outer islands; the player can leave toward either the coast or jungle.

**Encounter and reward emphasis:** Water and wind pressure mixed with physical threats, navigation discoveries, and specialized accessories. Basic island access does not depend on completing the region's major dungeons.

## 5. Dungeon layout standards

### 5.1 Major dungeon structure

Each major dungeon should include:

1. A visible field landmark and a clear approach.
2. An entrance space that previews its layout or central mechanism.
3. Two meaningful branches, with enough visual differences to remember them.
4. An optional challenge and reward outside the central route.
5. A local shortcut opened from the far side.
6. A recovery opportunity before its largest combat test.
7. A readable return route or second exit.

Only the four routes in the register create interregional shortcuts. Other dungeon exits connect districts within their own region unless the world graph is deliberately revised.

### 5.2 Variety across adjacent dungeons

Vary entrance position, route shape, verticality, interaction, encounter composition, and reward role. A fortress can offer route choice, a cistern can use water control, a barrow can reward observation, and a mine can use lifts. Avoid scheduling several consecutive dungeons around the same mechanism.

Use puzzle interactions that suit the camera and controls. Mechanical changes should be visibly confirmed: a gate rises, a channel drains, a bridge moves, or a lift becomes available. Dangerous states require clear cues and predictable recovery.

### 5.3 Field-to-dungeon continuity

Record each entrance's position, facing, elevation, and connected interior point. Show an exterior tower above its interior stair, and place a lower exit beneath the corresponding hillside. Separate maps are acceptable when their spatial relationships remain consistent.

Preserve local mechanism states when leaving and returning. A shortcut is an enduring improvement to navigation.

## 6. Settlements and services

Main towns combine a compact explorable center with surrounding functional districts. Smaller towns specialize in one or two useful services. Villages provide local identity, rest, and path junctions. Camps and refuges support travel through sparsely inhabited regions.

Use service interfaces for shops, storage, reinforcement, and rest, with authored portraits and dialogue added by the creator later. Build a useful movement loop through each settlement: entrance, services, landmark, secondary exit, and return path.

Avoid making every building enterable. Select buildings with a gameplay purpose and make the rest contribute to scale through courtyards, windows, roofs, alleys, and visible activity. Distinct entrances and signage should identify usable interiors.

Distribute services so specialized equipment supports travel choices without forcing excessive cross-world errands. Basic recovery and supplies should remain available on the accessible side of demanding routes.

No vendor identity, relationship, quest, or story condition is assigned here.

## 7. Exploration activities and rewards

### 7.1 Activities that stand without quest writing

| Activity | Player action | Potential payoff |
| --- | --- | --- |
| Route discovery | Notice an entrance or trace a visible path. | A shortcut, second approach, or new destination. |
| Mechanical restoration | Operate local controls or recover an accessible mechanism component. | A bridge, lift, drained passage, or usable crossing. |
| Observation puzzle | Read architecture, reflections, alignment, or repeated markings. | An optional room, equipment, or technique. |
| Optional combat challenge | Choose to fight a clearly signaled dangerous encounter. | Specialized equipment or upgrade materials. |
| Resource pocket | Find an out-of-the-way cluster. | Materials appropriate to the current progression model. |
| Equipment cache | Explore a side chamber or difficult approach. | A new build option or protection against a known threat. |
| Viewpoint | Reach a useful height or open sightline. | Better map understanding and visible leads. |
| Local transport unlock | Open a gate or restore a landing connection. | Less repeated travel and another route choice. |

These are mechanical activities, not authored quests. The creator may later attach narrative context without changing their basic spatial function.

### 7.2 Reward placement

Every major dungeon should provide at least one reward that creates a new decision: equipment with an unusual interaction, a technique, a resistance option, an alternative scaling path, or a meaningful route unlock.

Side dungeons can focus on one of those outcomes. Small discoveries can offer currency, materials, supplies, a small equipment find, or useful location knowledge.

Spread rewards across physical, defensive, magical, and utility playstyles. Place some targeted protection before a demanding encounter and some improvement beyond it. Optional rewards should support multiple party compositions.

Preserve the existing rule that innate magic affinities cannot be copied through leveling. Equipment may compensate for a weakness or strengthen an advantage without rewriting the underlying affinity profile. Any build-defining item needs comparison against both manual-growth and automatic-growth characters.

### 7.3 Return visits

Support returns through remaining branches, visible inaccessible treasure, newly opened routes, changed equipment options, and optional higher-pressure encounters. The player should be able to remember why a place is worth revisiting.

Mark opened shortcuts and completed mechanism states. Avoid automatically refilling unique chests or resetting discoveries. Enemy respawn rules are a separate combat-system decision; cleared roads should not become tedious because the map requires frequent reuse.

## 8. Encounters, hazards, and access

### 8.1 Encounter placement

Place encounters at meaningful spaces: route junctions, optional treasure approaches, broad bridges, chambers, and defended entrances. Leave enough room to inspect nearby terrain before combat begins.

The default proposal is visible field encounters with readable engagement boundaries. If an encounter meter is retained instead, tune it to preserve uninterrupted exploration and prevent an excessive battle frequency in heavily reused routes.

Major combat arenas need clear access and recovery placement. This plan specifies their gameplay role, not boss identities, characters, or narrative significance.

### 8.2 Affinity variety

Regional climate does not determine every enemy's affinities. Mix physical pressure, several magic types, support roles, and differing defensive profiles. Allow the player to infer or learn relevant information before committing to the hardest encounters.

Use Fire, Earth, Water, Wind, Light, Dark, Healing, and Holy as the existing magic categories. Cold, heat, poison, steam, and sand are environmental or status concepts whose rules need separate decisions. They do not automatically create extra magic types.

Avoid mandatory field actions that require a particular companion, marriage, or specialized build. Environmental interactions can use shared tools, local controls, or broadly available preparations.

### 8.3 Difficulty distribution

Use broad regional pressure bands with easier approach routes and harder optional pockets. Exact levels remain unset until combat is tested. A surface road can pass near a challenging dungeon without forcing the player to clear it.

Provide visible signs of danger and an opportunity to leave. Alternate approaches can reduce encounter count or offer a better recovery point. Exploration rewards should help a player change their preparation rather than requiring a single prescribed build.

### 8.4 Rest and travel

Place rest opportunities in settlements, at selected dungeon entrances, and near meaningful internal shortcuts. Avoid recovery points that require repeating long stretches after every failed encounter.

Proposed fast travel is unlocked by physically discovering appropriate rest or transport sites. Use it for long returns while retaining useful local shortcuts between a destination and its nearest travel anchor. Do not place a teleport point at every minor find.

## 9. Visual scale, navigation, and presentation

### 9.1 Large-world feeling with manageable geometry

Use broad landscape silhouettes, visible distant destinations, and several traversable elevations. The field can use compressed travel distances while architecture, river systems, and background terrain imply a larger realm.

Place a few large landmarks in each district. Support them with smaller local cues rather than a uniformly dense scatter of props. Approaching a visible destination should reveal new entrances and layers.

### 9.2 Camera readability

Test layouts from the actual gameplay camera early. Maintain clear path widths, visible doorways, and distinguishable safe ledges. Fade or simplify obstructing foliage and roofs where needed. Decorative geometry must not resemble an accessible path unless it is intended to be one.

Use color, shape, lighting, and sound together for navigation. Affinity hints and interactables should not depend on color alone. Snow, sand, mist, and bloom must preserve terrain contrast.

### 9.3 Map information

The map should reveal visited paths, settlement locations, discovered dungeon entrances, opened shortcuts, and player markers. Distinguish multiple entrances to the same dungeon from separate dungeons.

Let a viewpoint reveal landscape relationships or broad points of interest without necessarily identifying every hidden reward. Keep undiscovered details available to attentive exploration.

### 9.4 Reusable environment kits

Plan reusable kits for settlement buildings, fortress walls, underground stonework, caves, mining machinery, bridges, and local vegetation. Reuse kit pieces while varying route structure, elevation, silhouette, and encounter arrangement.

Portrait scenes and service panels can carry authored interactions. The environment remains a place to navigate and inspect, with full 3D interiors reserved for spaces whose layout matters.

## 10. Worked opening-area blockout

Use the Green River Valley as the first complete regional prototype, then test a smaller cold-area slice to confirm that the approach works in a different environment.

### 10.1 First playable district

Build the Reedbridge–Millbrook river loop with:

- One compact town center and one village.
- Two riverbank routes and a visible footbridge initially opened from the far side.
- The Mill Cellar and Bridge Undercroft as small exploration spaces.
- A hill-fortress silhouette marking the future Royal Aqueduct entrance.
- Several readable optional encounters and at least one build-relevant equipment find.
- A distant northern path and eastern road that visibly extend beyond the district.

No story introduction or quest is required to test this space. The creator will author those separately.

### 10.2 Expand into a complete region

1. Add the orchard and foothill districts with their secondary settlements.
2. Build the Royal Aqueduct and its internal return loop.
3. Add the remaining major and side dungeons from the valley inventory.
4. Connect the forest, coast, highlands, marsh, and capital approaches at actual positions.
5. Verify the aqueduct unlock and surface royal road remain independent.
6. Review encounter spacing, service access, reward distribution, and the usefulness of return routes.

### 10.3 Validate another landscape

Build one tundra refuge-to-barrow loop with open sightlines and fewer settlements. Confirm that the same navigation and reward principles work without copying the valley's population density or vegetation cover.

## 11. Production order and acceptance criteria

### 11.1 Build order

| Pass | Work | Completion condition |
| --- | --- | --- |
| World connections | Place all regional entrances, exits, and shortcut endpoints. | The route register is consistent and each region has an alternative approach. |
| Movement blockout | Build the opening district and first dungeon with the actual camera. | Paths, entrances, and recovery points are readable. |
| Complete region | Finish the valley's settlements, dungeons, and discoveries. | Density works during real play and repeat travel remains useful. |
| Contrast region | Build the tundra test slice. | The design works with sparse settlement and long views. |
| Regional expansion | Add neighboring regions in connected groups. | New regions create usable circuits rather than disconnected demonstration maps. |
| Content completion | Fill remaining destination inventories and optional spaces. | Each region has a distinct activity mix and reward purpose. |
| Presentation pass | Add final art, sound, effects, signage, and accessibility details. | The final presentation preserves navigational clarity. |

### 11.2 Per-location acceptance criteria

- The location has a clear reason to visit and a recognizable silhouette or approach.
- Its entrances and exits agree with the regional geography.
- Its gameplay purpose differs meaningfully from nearby locations.
- The reward matches the effort and supports a useful choice.
- Shortcuts save a meaningful amount of repeat travel.
- Important mechanisms communicate their effect and retain their state.
- Encounter frequency leaves time to inspect the environment.
- The space remains understandable without companion dialogue or a quest explanation.
- Narrative meaning, named characters, and quest outcomes remain available for the creator to author.

### 11.3 Decisions to settle through prototyping

Exact map sizes; movement speed; encounter format and frequency; recovery rules; fast-travel availability; hazard systems; local transport transitions; dungeon duration; upgrade-material distribution; and the final number of candidate locations to retain.

These decisions can change the amount of content built without changing the world's main connections or the creator's control of its story.
