# Fantasy Party RPG — Systems Reference

**Version:** 0.1  
**Updated:** 2026-09-18  
**Scope:** Character progression, companions, marriage, magic affinities, equipment, and presentation.

**Confirmed world presentation (2026-09-21):** [Overworld, towns, and explorable locations](fantasy-rpg-overworld-and-location-structure.md) records the large 3D overworld, GUI-based town services and conversations, and separate explorable 3D adventure areas.

This document records the system developed in the design conversation and summarized in the illustrated system sheet. The game has no final title yet.

**Established rules** capture the creator's stated design. **Working proposals** describe implementation ideas discussed so far; their names, numbers, and balancing details remain adjustable. Character illustrations and sample builds are examples, not established characters or story events.

World geography, level layouts, named locations, and regional content will be developed in the next design discussion.

## 1. Game direction

### Established direction

- A fantasy party RPG inspired by Evenicle's gameplay, interface, and combination of simple, colorful 3D environments with detailed 2D anime portraits.
- An original story, cast, and setting.
- An open or densely interconnected world inspired by the freedom and connections of Elden Ring and Dark Souls 1.
- Multiple ways to reach places, with opportunities to explore different routes.
- Detailed character development inspired by Souls-style attribute allocation, equipment choices, and build specialization.
- Male and female companions, including women the protagonist has not married.

### Working assumptions

Turn-based party combat is the current design assumption. The exact combat format has not been explicitly finalized.

Alternate entrances, unlockable shortcuts, visible landmarks, optional challenges, and routes that reconnect to familiar places are proposed ways to express the desired world connectivity. No specific region or map has been established.

## 2. The protagonist's rare gift

### Established rules

The male protagonist is a rare individual who can learn any magic or ability. This exceptional potential is expressed through flexible character development and access to different disciplines.

He can share this gift only with women he marries. His wives gain the same freedom to direct their growth and learn across disciplines.

Male companions and unmarried female companions do not receive this gift. They remain usable, potentially very powerful party members through natural progression, their personal affinities, and equipment.

### Working interpretation

Universal learning potential permits access to a discipline. Discovering a technique, meeting its requirements, learning it, and investing in its effectiveness can still require effort.

Teachers, spellbooks, exploration rewards, practice, and equipment are possible sources of learning. The exact acquisition system remains open.

Whether the shared gift requires an ongoing marriage bond or becomes permanent once granted has not been decided.

## 3. Two progression systems within one party

### Established rules

| Character category | Attribute growth | Learning potential | Equipment and combat use |
| --- | --- | --- | --- |
| Protagonist | The player chooses what to improve. | Can learn any magic or ability. | The player builds and equips him. |
| Married female companion | The player chooses what to improve. | Receives the protagonist's universal learning potential. | The player builds and equips her. |
| Male companion | Automatic growth follows his strengths and role. | Does not receive the protagonist's universal-learning gift. | Equipment and weapons can make him exceptionally strong. |
| Unmarried female companion | Automatic growth follows her strengths and role. | Does not receive the gift until marriage. | Equipment and weapons can make her exceptionally strong. |

All companions can gain levels. The distinction is who controls their attribute development.

A tank's automatic progression would emphasize relevant attributes such as health, endurance, and strength. It would not spend growth on intelligence without a reason rooted in that character's talents.

### Working implementation

Automatic progression should produce effective, coherent builds. It can also unlock techniques or improve existing abilities at appropriate milestones.

The player would still choose equipment, select among known skills, and control tactical decisions for these companions. Automatic attribute growth does not imply automatic combat control.

Comparable growth budgets are a starting point for balancing the two progression systems. For example, over five levels:

- A knight might automatically gain 3 Vitality, 1 Endurance, and 1 Strength.
- The protagonist or a wife might receive five freely assignable points.

These numbers are illustrative. Actual combat effectiveness will depend on affinity, abilities, equipment, and encounter design as well as attribute totals.

## 4. Proposed attributes and leveling

The following seven attributes are a working set, not a finalized stat list.

| Attribute | Proposed purpose |
| --- | --- |
| Vitality | Health and survivability. |
| Endurance | Equipment capacity and guarding capability. |
| Strength | Heavy weapons, physical power, and breaking defenses. |
| Dexterity | Finesse weapons, precision, and technical weapon skills. |
| Intellect | Offensive spell power and magical weapon scaling. |
| Spirit | Healing, protective magic, and blessings. |
| Focus | Capacity to equip active skills and passive abilities. |

A proposed leveling loop is to spend advancement resources at a rest point to increase selected attributes. Costs could rise with each character's overall investment.

The currency system, points earned per level, costs, caps, and relationship between experience and attribute purchases remain undecided.

Giving reserve companions advancement and providing new recruits with an appropriate starting budget have been proposed to reduce catch-up grinding. Neither the reward model nor the active party size is final.

## 5. Marriage and companion development

### Established effects

Marriage grants a female companion access to the protagonist's flexible progression and universal learning potential.

Her innate magic affinities remain her own. Marriage does not replace her strengths and weaknesses with the protagonist's neutral values.

| Changes through marriage | Remains personal to the companion |
| --- | --- |
| Attribute development becomes player-directed. | Her innate magical effectiveness, resistances, and vulnerabilities. |
| She gains the potential to learn any discipline. | Her existing expertise, history, and identity. |

Male companions and unmarried women can join and contribute without marriage. Marriage expands the number of companions with fully customizable progression.

### Working proposals

- Offer a one-time attribute reallocation when a companion marries the protagonist, allowing the player to reshape her earlier automatic growth.
- Permit the player to retain her original specialization if desired.
- Keep learning requirements and equipped-skill limits meaningful after universal learning becomes available.
- Give all companions substantial personal development, quests, and rewards.

Marriage is intended to reward the player with greater control and broader potential. Male and unmarried female companions should remain useful throughout the game and may outperform customizable characters in particular builds or encounters.

## 6. Eight magic types

### Established classification

| Type | Category |
| --- | --- |
| Fire | Element |
| Earth | Element |
| Water | Element |
| Wind | Element |
| Light | Element |
| Dark | Element |
| Healing | Additional magic discipline |
| Holy | Additional magic discipline |

Light and Holy are distinct types. Their exact spell identities and mechanical differences still need definition.

Healing is a separate discipline. How its incoming-effect percentage behaves needs a restorative rule rather than an unexamined reuse of damage resistance.

No universal elemental advantage wheel has been established. Matchups are determined by the relevant character or enemy's personal values.

## 7. Fixed personal magic affinities

### Established rules

Characters and enemies have personal percentage values describing:

1. How effective they are at using each magic type.
2. How strong or weak they are against each magic type.

These innate affinities are part of the individual. They cannot be copied by leveling or reproduced simply by matching another character's attributes.

The protagonist is the sole naturally neutral exception: his offensive and defensive modifiers are **0% across all eight types**. He has no innate magical weakness and no particular innate magical advantage.

Neutrality is a baseline modifier. It does not mean zero damage, immunity, or an inability to improve through attributes and equipment.

Wives retain their individual affinities after receiving the gift. Male companions and unmarried female companions retain theirs as well.

### Working conventions

Offensive and defensive values are treated independently. A character could be an excellent fire caster while remaining vulnerable to fire attacks.

For damaging magic, the proposed display conventions are:

| Modifier | Positive value | Zero | Negative value |
| --- | --- | --- | --- |
| Offensive effectiveness | Stronger output. | Baseline output. | Weaker output. |
| Damage resistance | Less incoming damage. | Baseline incoming damage. | More incoming damage. |

Innate values should be stored and displayed separately from temporary buffs and equipment modifiers. Equipment can help compensate for a weakness without changing the character's innate identity.

### Illustrative affinity profiles

Only the protagonist's neutral values are established. All other numbers in this example are placeholders.

| Example character | Fire effectiveness | Fire resistance | Water resistance |
| --- | ---: | ---: | ---: |
| Protagonist | 0% | 0% | 0% |
| Male fire specialist | +40% | +30% | -25% |
| Female companion, before or after marriage | -20% | +15% | +35% |

Matching the male specialist's intelligence would not reproduce his innate fire bonus. The female companion's water resistance could make her valuable against water attacks regardless of marriage status.

### Proposed damage calculation

```text
Final damage = ordinary damage
             × (1 + offensive affinity / 100)
             × (1 - target resistance / 100)
```

Ordinary damage includes the relevant spell, attributes, and equipment before these innate affinity modifiers.

For a spell with 100 ordinary damage against a target with 25% fire resistance:

- Neutral protagonist: 100 × 1.00 × 0.75 = **75 damage**.
- Specialist with +40% fire effectiveness: 100 × 1.40 × 0.75 = **105 damage**.

This formula is a proposal. Modifier order, stacking, caps, rounding, immunity, and possible absorption rules remain open. Values at or beyond 100% resistance require an explicit rule before implementation.

### Proposed healing interpretation

- **Healing effectiveness** modifies the restorative output of the caster.
- **Healing received** modifies how much restoration the recipient receives; positive values would increase recovery.
- Damage resistance applies to harmful effects.

The protagonist's innate healing modifiers remain neutral at 0%. The interaction of healing with Holy magic, barriers, unusual targets, and mixed effects has not been finalized.

## 8. Equipment and powerful companion builds

### Established direction

Weapons and equipment are major sources of strength for every companion. A male companion or unmarried woman can become exceptionally powerful with the right setup.

Fixed natural growth and personal affinities can make someone particularly well suited to a specific combination of items.

### Illustrative tank build

| Component | Example contribution |
| --- | --- |
| Natural growth | High health, endurance, and strength. |
| Counterattack shield | Successful blocks prepare a powerful counter. |
| Protective armor | Improves the effectiveness of guarding allies. |
| Health-scaling weapon | Converts investment in health into offensive value. |
| Protective relic | Supports barriers or survival while defending allies. |

This is an example, not a confirmed item set. It demonstrates how automatic growth can support strong equipment interactions.

### Proposed progression layers

Possible systems discussed include weapon reinforcement, alternative weapon scaling, discoverable skills, branching skill upgrades, accessories, cooperative techniques, and improved healing supplies.

Equipment choices can either amplify natural advantages or compensate for vulnerabilities. Slot limits, weight, resource costs, and limited upgrade materials are possible tradeoffs.

## 9. Presentation and interface direction

### Established visual direction

- Simple, colorful 3D environments.
- Detailed, expressive 2D anime portraits.
- An interface inspired by the readability and prominent party presentation of Evenicle, with an original visual identity.

### Working interface ideas

| Screen | Information to emphasize |
| --- | --- |
| Exploration | The environment, party portraits, health, and convenient map access. |
| Combat | Turn order if using turn-based combat, action costs, party condition, and available enemy information. |
| Character growth | Manual or automatic progression mode, current attributes, and the effects of increases. |
| Affinities | All eight types, outgoing effectiveness, incoming response, and innate versus equipment-modified values. |
| Equipment | Requirements, scaling, weight if used, and the selected character's resulting changes. |
| Marriage progression | Newly available growth and learning options, alongside the companion's unchanged innate affinities. |

Affinity displays should use clear labels and signed numbers as well as color. The growth screen should explain what an investment changes, including newly met equipment or ability requirements.

## 10. Unresolved decisions

1. Does the shared gift persist permanently, or depend on an ongoing marriage bond? What happens after death, separation, or disruption?
2. What exact combat format will the game use?
3. Which attributes make the final list, and what does each affect?
4. How are advancement resources earned, allocated, and spent?
5. How do automatic companions learn new abilities within their talents?
6. Is attribute reallocation available, including after marriage?
7. What are the active party size and reserve progression rules?
8. How do Light, Holy, and Healing differ in their spell effects?
9. How do affinity modifiers stack with equipment, buffs, debuffs, and mixed damage?
10. What numerical limits govern resistance, vulnerability, and restorative effects?
11. Which proposed equipment and skill progression layers belong in the initial game?

## 11. Next discussion: world, levels, and locations

The next design phase will establish the setting's geography, regional connections, level layouts, and locations. This document reserves those decisions for that discussion.

The current requirements to carry forward are freedom of exploration, multiple routes between places, a colorful fantasy presentation, and meaningful opportunities to discover companions, equipment, and abilities.

Town, forest, monastery, cave, and bridge imagery in the system poster is illustrative. It does not establish the world's actual locations or names.
