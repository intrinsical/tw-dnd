# A Simple Mass Combat System

## Design Goals

* __Easy to Learn.__ Anyone familiar with D&D 5e should be able to learn the rules after playing one mass combat encounter. 
* __Gameplay Time.__ A mass combat encounter should take roughly the same amount of play time to resolve as a D&D 5e combat encounter. 
* __Squad Level Combat.__ The rules are designed to support squad versus squad combat. The intended gameplay is for each player character to take command of a squad of creatures, leading them into battle against opposing squads of creatures. 
* __VTT Support.__ Mass combat encounters can run on VTTs that support D&D 5e combat encounter rules. 

## The Rules

* __Units.__ A unit is composed of 1 or more creatures of the same type. For example, 200 goblins form a unit. 10 dragons is another unit. The number of creatures in a unit is capped at 200. 
* __Unit Statblock.__ The unit uses its creature's statblock as its unit statblock. During mass combat, the unit can use all traits, abilities and attacks as listed in the creature's statblock. When combat begins, the unit will roll initiative using its creature's initiative. The creature's statblock determines how far it moves, what actions, bonus actions and reactions the unit can take. If the creature has the multiattack feature, the unit can make multiattack. 
* __Unit Size.__ A combatant is a creature that is still in fighting condition. A unit starts combat with a number of combatants, which will be referred to as the unit's `max_combatants`. As combat progresses and the unit gets attacked, the number of remaining combatants will be referred to as `current_combatants`. 
* __Unit Hitpoints.__ The creature's hitpoints and maximum hitpoints as found in its creature statblock will be used as a yardstick for unit's health in combat. They are also used to determine the number of remaining combatant using a formula found in Rule #10.2.
* __Unit Damage Factor.__ The size of a unit plays a role in amplifying its attack as well as minimizing damage taken by the unit. This is represented by the unit's `damage_factor`, determined using the __Unit Damage Factor Table__. 
* __Attacks.__ When the unit attacks, make an attack roll to determine if the unit hits with its attack. 
  * __On a hit,__ roll for damage, adjust the damage using the attacking unit's `damage_factor` and the target unit's `damage_factor`. The formula for adjusting damage taken by a unit is found in Rule #10.1.
  * __On a miss,__ instead of taking no damage, the target unit takes half the damage. 
* __Ranged Attacks.__ 
* __Broken Condition.__ When a unit's hitpoints has been reduced to 0, the unit is incapacitated and __Broken__. A broken unit has its combatants dispersed, running away in random directions, and cannot be reconstituted until the current mass combat encounter has ended.
* __Ending a Mass Combat Encounter.__ When a mass combat encounter has ended, each unit can determine the number of creatures who are not injured, lightly injured, seriously injured or killed. Uninjured creatures can immediately serve as combatants. Lightly injured creatures can once again serve as a combatant after the unit has taken a short rest. Seriously injured creatures will require a long rest before they can serve as a combatant. 
  * __Unbroken Units.__ For units that complete the mass combat encounter with at least 1 hitpoint, a third of its creatures who are no longer combatants are lightly injured, a third are seriously injured and the remaining third have been killed in combat. 
  * __Broken Units.__ A broken unit has had half of its combatants killed in action. A commander can spend one hour rallying the remaining combatants and reforming the unit. Half of the remaining creatures can still serve as combatants while the other half are seriously injured and are unable to fight.
* __Formulas.__
  * __Adjusting Damage Taken by a Unit.__ `target_damage = round(damage x Unit's damage_factor / Target's damage_factor)`
  * __Number of Combatants.__ `current_combatants = round(hp / max_hp * max_combatants)`

| No. of Combatants | Damage Factor |
|---|---|
| 1-50 | 1 |
| 51-100 | 2 |
| 101-150 | 3 |
| 151-200 | 4 |

### Support for Battlemaps

When battlemaps are used, the following rules apply:

* __Grid Size.__ The size of a single square on the battlemap has been increased from the default  of 5x5 feet squares to 30x30 feet squares. __Optional:__ Squares can be replaced with hexagons representing a circular area of 30 feet in diameter. 
* __Unit Token(s).__ The physical area on the battlemap taken up by a unit varies with the size of the creature and the number of combatants in the unit. A unit is represented on the battlemap by one or more tokens. The number of grid spaces occupied by a unit can be determined through the {{Mass Combat Rules - Combatants Per Square||Link}} below.
* __Unit Layout.__ Before combat begins, a unit's tokens can be laid out on the battlemap in any formation, so long as every unit token is adjacent to at least one other unit token. This token adjacency requirement should also be observed as combat progresses. 
* __Unit Movement.__ In general a unit should be able to move one square/hex per turn, or two squares/hexes when dashing. This is because most creatures have a movement speed of 30 feet per round. 
  * __Special Case.__ A special exception is made for units that, for whatever reason (for example, due to being stuck in difficult terrain, having movement penalties), can only move less than 15 feet per round. Such units are allowed to move 1 hex during odd rounds. 
* __Splitting an Attack.__ When a unit with more than one token is making an attack, it can divide its attack into multiple strikes. 
  * The number of unit tokens determine the maximum number strikes a unit can make. 
  * Each strike The minimum number of combatants in each strike is determined by the {{Mass Combat Rules - Combatants Per Square||Link}}.
  * Each enemy unit may only be attacked.

<$transclude $tiddler="Mass Combat Rules - Combatants Per Square" $mode="block" />

## Unit Commanders

A player character can serve as a unit's commander. During a mass combat encounter, the unit commander stays with the unit but does not fight. Instead, the commander spend its time issuing orders and instructions, enhancing the unit's ability to work cohesively as a team. 

* __Tactical Maneuvers.__ On the unit's turn, the unit commander can order the unit to perform a tactical maneuver using its action. The commander can do this a number of times equal to their proficiency bonus. The commander regain all uses of its tactical maneuvers at the start of the next mass combat encounter. <br/>Commanders with martial training can impart some of their expertise to the unit's combatants, granting their unit access to additional tactical maneuvers. 

The list of usable maneuvers can be found in the [[Tactical Maneuvers Table|Mass Combat Rules - Tactical Maneuvers]] below.

<$transclude $tiddler="Mass Combat Rules - Tactical Maneuvers" $mode="block" />

## In Practice

The key difference between standard combat and mass combat is really in how damage is calculated. Also, keep track of the number of surviving combatants and the unit's damage factor using the following procedure:

__When a unit's hitpoints has been changed,__ 

* Update the number of creatures remaining in the unit. `num_combatants = round(hp / max_hp * max_combatants)`
* Look up the unit's new damage factor. 

