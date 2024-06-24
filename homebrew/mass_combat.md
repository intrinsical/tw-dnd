# A Simple Mass Combat System

## Design Goals

* __Easy to Learn.__ Anyone familiar with D&D 5e should be able to learn the rules after playing one mass combat encounter. 
* __Gameplay Time.__ A mass combat encounter should take roughly the same amount of play time to resolve as a D&D 5e combat encounter. 
* __Squad Level Combat.__ The rules are designed to support squad versus squad combat. The intended gameplay is for each player character to take command of a squad of creatures, leading them into battle against opposing squads of creatures. 
* __VTT Support.__ Mass combat encounters can run on VTTs that support D&D 5e combat encounter rules. 

## The Rules

1. __Units.__ A unit is composed of 1 or more creatures of the same type. For example, 200 goblins form a unit. 10 dragons is another unit. The number of creatures in a unit is capped at 200. 
2. __Unit Statblock.__ The unit uses its creature's statblock as its unit statblock. During mass combat, the unit can use all traits, abilities and attacks as listed in the creature's statblock. When combat begins, the unit will roll initiative using its creature's initiative. The creature's statblock determines how far it moves, what actions, bonus actions and reactions the unit can take. If the creature has the multiattack feature, the unit can make multiattack. 
3. __Unit Size.__ A combatant is a creature that is still in fighting condition. A unit starts combat with a number of combatants, which will be referred to as the unit's `max_combatants`. As combat progresses and the unit gets attacked, the number of remaining combatants will be referred to as `current_combatants`. 
4. __Unit Hitpoints.__ The creature's hitpoints and maximum hitpoints as found in its creature statblock will be used as a yardstick for unit's health in combat. They are also used to determine the number of remaining combatant using a formula found in Rule #9.2.
5. __Unit Damage Factor.__ The size of a unit plays a role in amplifying its attack as well as minimizing damage taken by the unit. This is represented by the unit's `damage_factor`, determined using the __Unit Damage Factor Table__. 
6. __Attacks.__ When the unit attacks, make an attack roll to determine if the unit hits with its attack. 
   1. __On a hit,__ roll for damage, adjust the damage using the attacking unit's `damage_factor` and the target unit's `damage_factor`. The formula for adjusting damage taken by a unit is found in Rule #9.1.
   2. __On a miss,__ instead of taking no damage, the target unit takes half the damage. 
7. __Broken Condition.__ When a unit's hitpoints has been reduced to 0, the unit is incapacitated and __Broken__. A broken unit has its combatants dispersed, running away in random directions, and cannot be reconstituted until the current mass combat encounter has ended.
8. __Ending a Mass Combat Encounter.__ When a mass combat encounter has ended, each unit can determine the number of creatures who are not injured, lightly injured, seriously injured or killed. Uninjured creatures can immediately serve as combatants. Lightly injured creatures can once again serve as a combatant after the unit has taken a short rest. Seriously injured creatures will require a long rest before they can serve as a combatant. 
   1. __Unbroken Units.__ For units that complete the mass combat encounter with at least 1 hitpoint, a third of its creatures who are no longer combatants are lightly injured, a third are seriously injured and the remaining third have been killed in combat. 
   2. __Broken Units.__ A broken unit has had half of its combatants killed in action. A commander can spend one hour rallying the remaining combatants and reforming the unit. Half of the remaining creatures can still serve as combatants while the other half are seriously injured and are unable to fight.
9. __Formulas.__
   1. __Adjusting Damage Taken by a Unit.__ `target_damage = round(damage x Unit's damage_factor / Target's damage_factor)`
   2. __Number of Combatants.__ `current_combatants = round(hp / max_hp * max_combatants)`

| No. of Combatants | Damage Factor |
|:---:|:---:|
| __1-50__ | 1 |
| __51-100__ | 2 |
| __101-150__ | 3 |
| __151-200__ | 4 |

__Table 1:__ Damage Factor Table

### Support for Battlemaps

When battlemaps are used, the following rules apply:

10. __Grid Size.__ The size of a single square on the battlemap has been increased from the default  of 5x5 feet squares to 30x30 feet squares. __Optional:__ Squares can be replaced with hexagons representing a circular area of 30 feet in diameter. 
11. __Unit Token(s).__ The number of combatants that can fit in a 30x30 feet square grid is listed in the __Combatants Per Square Table__. Units with a large number of combatants may occupy more than one grid square. The number of grid squares occupied by a unit can be determined by dividing its `current_combatants` by the maximum number of combatants per square, rounded up. For example 100 medium sized combatants would occupy 3 squares and is represented on the battlemap with 3 unit tokens. 
12. __Unit Layout.__ Before combat begins, a unit's tokens can be laid out on the battlemap in any formation, so long as every unit token is adjacent to at least one other unit token. This token adjacency requirement should also be observed as combat progresses. 
13. __Unit Movement.__ In general a unit should be able to move one square/hex per turn, or two squares/hexes when dashing. This is because most creatures have a movement speed of 30 feet per round. 
    1. __Special Case.__ A special exception is made for units that, for whatever reason (for example, due to being stuck in difficult terrain, having movement penalties), can only move less than 15 feet per round. Such units are allowed to move 1 hex during odd rounds. 
14. __Splitting an Attack.__ When making an attack, the unit can split its combatants up into smaller groups to strike at multiple targets. Each group must meet the following limits:
    1. In order for each group to function as a cohesive fighting force, the minimum number of combatants in a group is the maximum number of combatants that can fit in one grid square. The maximum number of combatants is determined by the __Combatants Per Square Table__. 
    2. Each group must attack a different target unit. 
    3. Every group must make the same type of attack. 

| Size | Max Combatants per Square/Hex |
|---|:---:|
| __Tiny__ | 200 |
| __Small__ | 80 |
| __Medium__ | 40 |
| __Large__ | 10 |
| __Huge__ | 5 |
| __Gargantuan__ | 1-2 (DM's Discretion) |

__Table 2:__ Combatants Per Square Table

### Unit Commanders

A player character can serve as a unit's commander. During a mass combat encounter, the unit commander stays with the unit but does not fight. Instead, the commander spend its time issuing orders and instructions, enhancing the unit's ability to work cohesively as a team. 

15. __Tactical Maneuvers.__ On the unit's turn, the unit commander can order the unit to perform a tactical maneuver using its action. The commander can do this a number of times equal to their proficiency bonus. The commander regain all uses of its tactical maneuvers at the start of the next mass combat encounter. Commanders with martial training can impart some of their expertise to the unit's combatants. Commanders with at least one level in a playable class grants their unit access to additional tactical maneuvers. 

The list of usable maneuvers can be found in the __Tactical Maneuvers Table__ below.

| Prerequisite Class | Tactical Maneuver |
|---|---|
| &mdash; | __Brace.__ The unit braces itself for incoming attacks, adding a +2 bonus to its armor class until the start of its next turn. While the unit is braced for attacks, it can use its reaction make a melee attack against the attacking unit. |
| &mdash; | __Charge.__ The unit moves at least 30 feet and makes a melee attack. On a hit, the target unit takes an additional 1d6 damage and must succeed on a DC 13 Strength saving throw or be knocked prone. |
| &mdash; | __Fall Back.__ The unit makes a melee attack before disengaging. The unit's movement does not provoke opportunity attacks for the rest of the unit's turn. |
| &mdash; | __Flanking Attack.__ The unit makes a melee attack with advantage when an ally unit is adjacent to the target unit. |
| &mdash; | __Skirmishing Attack.__ The unit makes a melee attack. On a hit, the target has disadvantage for its next attack roll. |
| &mdash; | __Spellcasting.__ The unit dodges while the unit commander casts a spell. |
| Barbarian | __Reckless Attacks.__ For this turn, the unit has advantage on its attacks and advantage on rolls using Strength. Attacks against the unit are made with advantage. |
| Fighter | __Action Surge.__ The unit can take one additional action on this turn. |
| Monk | __Stunning Strike.__ When the unit hits with a melee attack on this turn, the target unit must succeed on a Constitution saving throw or be stunned until the end of the unit's next turn. The DC for this strike is 8 + the commander's proficiency bonus + the commander's wisdom modifier. |
| Paladin | __Intercept Attacks.__ Until the start of the unit's next turn, the unit reduces the damage taken from melee attacks by 1d10 + the commander's proficiency bonus (to a minimum of 0 damage). |
| Ranger | __Whirlwind Attack.__ On this turn, the unit can use its action to make an melee attack against any units adjacent to it, with a separate attack roll for each target unit. |
| Rogue | __Sneak Attack.__ On this turn, the unit's attacks deal extra damage equal to the rogue commander's sneak attack damage. |

__Table 3:__ Tactical Maneuvers Table

## Mass Combat In Practice

`TODO: Entire section needs to be re-written` 
The only major difference between standard combat and mass combat is really in how damage is calculated and applied to a unit. Note that as a unit's hitpoint changes, its `current_combatant`, `_damage_factor` and number of token will also change accordingly. 

## Designing Mass Combat Encounters

In reality, this mass combat ruleset is just D&D 5e monster vs monster combat with some added dressing to make it feel like a mass combat encounter. Thus, the guidelines for creating combat encounters in Chapter 3 of the Dungeon Master's Guide, under "Creating a Combat Encounter" is also helpful for designing mass combat encounters. Use the following steps to design a balanced mass combat encounter:

1. __Determine Friendly Units.__ Create the friendly units that are under the player's control. 
2. __Calculate Total XP of Friendly Units.__ Add up the unit XP for all friendly units in the encounter.
   1. __Unit XP__. A unit's XP takes both the unit's creature type and size into consideration. To get the unit's XP value, multiply the XP value found in the creature statblock by the unit's `damage_factor`.
3. __Modify Total XP for Multiple Units.__ As the number of units increases, they become more dangerous. To take this into consideration, multiply __Total XP__ by the XP Multiplier found in the __Unit Multiplier Table__.
4. __Modify Total XP for Encounter Difficulty.__ Determine the encounter's difficulty level. To adjust for encounter difficulty, multiply __Total XP__ with the XP Multiplier found in the __Encounter Difficulty Table__. 

With the calculated __Total XP__ value in hand, the above steps can be repeated to design opposing units that match this calculated XP value, skipping the final step of __Modifying Total XP for Encounter Difficulty__. 

| Difficulty | XP Multiplier |
|---|:---:|
| __Easy__ | x 0.6 |
| __Medium__ | x 1.2 |
| __Hard__ | x 1.8 |
| __Deadly__ | x 2.8 |

__Table 4:__ Encounter Difficulty Table


| Number of Units | XP Multiplier |
|:---:|:---:|
| 1 | × 1.0 |
| 2 | × 1.5 |
| 3–6 | × 2 |
| 7–10 | × 2.5 |
| 11–14 | × 3 |
| 15 or more | × 4 |

__Table 5:__ Unit Multiplier Table

