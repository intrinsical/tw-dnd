rm *.tid
python3 json2tid.py tiddlers.json

echo Moving spell tiddlers
mkdir ../tiddlers/spells
mv spell.tid ../tiddlers/spells
mv spells-by-level.tid ../tiddlers/spells
mv spells-by-class.tid ../tiddlers/spells
mv spells-by-sourcebook.tid ../tiddlers/spells
mv concentration-spells.tid ../tiddlers/spells
mv ritual-spells.tid ../tiddlers/spells
grep -lE "^tags:.*\sSpell\s.*$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\sSpell$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[Spells By Level\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[Spells By Level\]\]$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[Spells By Class\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[Spells By Class\]\]$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[Spells By Sourcebook\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[Spells By Sourcebook\]\]$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[SRD Spell\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[SRD Spell\]\]$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[Animate Objects Table\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/spells
grep -lE "^tags:.*\s\[\[Animate Objects Table\]\]$" *.tid | xargs mv -t ../tiddlers/spells

echo Moving monster tiddlers
mkdir ../tiddlers/monsters
mv monster.tid ../tiddlers/monsters
grep -lE "^tags:.*\s\[\[Monster Type\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/monsters
grep -lE "^tags:.*\s\[\[Monster Type\]\]$" *.tid | xargs mv -t ../tiddlers/monsters
grep -lE "^tags:.*\sMonster\s.*$" *.tid | xargs mv -t ../tiddlers/monsters
grep -lE "^tags:.*\sMonster$" *.tid | xargs mv -t ../tiddlers/monsters
grep -lE "^tags:.*\s\[\[Lair Action\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/monsters
grep -lE "^tags:.*\s\[\[Lair Action\]\]$" *.tid | xargs mv -t ../tiddlers/monsters
grep -lE "^tags:.*\s\[\[Regional Effect\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/monsters
grep -lE "^tags:.*\s\[\[Regional Effect\]\]$" *.tid | xargs mv -t ../tiddlers/monsters
mv *-variant.tid ../tiddlers/monsters

echo Moving chracter creation tiddlers
mkdir ../tiddlers/races
mv race.tid ../tiddlers/races
grep -lE "^tags:.*\sRace\s.*$" *.tid | xargs mv -t ../tiddlers/races
grep -lE "^tags:.*\sRace$" *.tid | xargs mv -t ../tiddlers/races
grep -lE "^tags:.*\sSubrace\s.*$" *.tid | xargs mv -t ../tiddlers/races
grep -lE "^tags:.*\sSubrace$" *.tid | xargs mv -t ../tiddlers/races
grep -lE "^tags:.*\s\[\[Racial Ability\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/races
grep -lE "^tags:.*\s\[\[Racial Ability\]\]$" *.tid | xargs mv -t ../tiddlers/races
mkdir ../tiddlers/classes
mv class.tid ../tiddlers/classes
grep -lE "^tags:.*\sClass\s.*$" *.tid | xargs mv -t ../tiddlers/classes
grep -lE "^tags:.*\sClass$" *.tid | xargs mv -t ../tiddlers/classes
grep -lE "^tags:.*\sSubclass\s.*$" *.tid | xargs mv -t ../tiddlers/classes
grep -lE "^tags:.*\sSubclass$" *.tid | xargs mv -t ../tiddlers/classes
mkdir ../tiddlers/classes/abilities
grep -lE "^tags:.*\sAbility\s.*$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\sAbility$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Circle Spells\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Circle Spells\]\]$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Eldritch Invocation\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Eldritch Invocation\]\]$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Fighting Style\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Fighting Style\]\]$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\sKi\s.*$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\sKi$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Ki Category\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Ki Category\]\]$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\sMetamagic\s.*$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\sMetamagic$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Pact Boon\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Pact Boon\]\]$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Wizard Spellcasting\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/classes/abilities
grep -lE "^tags:.*\s\[\[Wizard Spellcasting\]\]$" *.tid | xargs mv -t ../tiddlers/classes/abilities
mkdir ../tiddlers/backgrounds
grep -lE "^tags:.*\sBackground\s.*$" *.tid | xargs mv -t ../tiddlers/backgrounds
grep -lE "^tags:.*\sBackground$" *.tid | xargs mv -t ../tiddlers/backgrounds
grep -lE "^tags:.*\s\[\[Background Feature\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/backgrounds
grep -lE "^tags:.*\s\[\[Background Feature\]\]$" *.tid | xargs mv -t ../tiddlers/backgrounds
mkdir ../tiddlers/feats
mv feat.tid ../tiddlers/feats
grep -lE "^tags:.*\sFeat\s.*$" *.tid | xargs mv -t ../tiddlers/feats
grep -lE "^tags:.*\sFeat$" *.tid | xargs mv -t ../tiddlers/feats

echo Moving character tiddlers
mkdir ../tiddlers/characters
mv sample-human-fighter.tid ../tiddlers/characters
mv sample-high-elf-wizard*.tid ../tiddlers/characters

echo Moving rule tiddlers
mkdir ../tiddlers/rules
grep -lE "^tags:.*\sRule\s.*$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\sRule$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\s\[\[Light Source\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\s\[\[Light Source\]\]$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\sObscurement\s.*$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\sObscurement$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\sResting\s.*$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\sResting$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\sCover\s.*$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\sCover$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\sAttack\s.*$" *.tid | xargs mv -t ../tiddlers/rules
grep -lE "^tags:.*\sAttack$" *.tid | xargs mv -t ../tiddlers/rules
mkdir ../tiddlers/rules/conditions
grep -lE "^tags:.*\sCondition\s.*$" *.tid | xargs mv -t ../tiddlers/rules/conditions
grep -lE "^tags:.*\sCondition$" *.tid | xargs mv -t ../tiddlers/rules/conditions

echo Moving item tiddlers
mkdir ../tiddlers/items
grep -lE "^tags:.*\sItem\s.*$" *.tid | xargs mv -t ../tiddlers/items
grep -lE "^tags:.*\sItem$" *.tid | xargs mv -t ../tiddlers/items
mkdir ../tiddlers/items/magicitems
grep -lE "^tags:.*\s\[\[Magic Item\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/items/magicitems
grep -lE "^tags:.*\s\[\[Magic Item\]\]$" *.tid | xargs mv -t ../tiddlers/items/magicitems
mkdir ../tiddlers/items/equipmentpacks
grep -lE "^tags:.*\s\[\[Equipment Pack\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/items/equipmentpacks
grep -lE "^tags:.*\s\[\[Equipment Pack\]\]$" *.tid | xargs mv -t ../tiddlers/items/equipmentpacks
mkdir ../tiddlers/items/tools
grep -lE "^tags:.*\sTool\s.*$" *.tid | xargs mv -t ../tiddlers/items/tools
grep -lE "^tags:.*\sTool$" *.tid | xargs mv -t ../tiddlers/items/tools
mkdir ../tiddlers/items/spellbooks
grep -lE "^tags:.*\sSpellbook\s.*$" *.tid | xargs mv -t ../tiddlers/items/spellbooks
grep -lE "^tags:.*\sSpellbook$" *.tid | xargs mv -t ../tiddlers/items/spellbooks
grep -lE "^tags:.*\s\[\[Sample Spellbook\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/items/spellbooks
grep -lE "^tags:.*\s\[\[Sample Spellbook\]\]$" *.tid | xargs mv -t ../tiddlers/items/spellbooks
mv spell-scroll-mishap.tid ../tiddlers/items/magicitems

echo Moving homebrew tiddlers
mkdir ../tiddlers/homebrew
grep -lE "^tags:.*\sHomebrew\s.*$" *.tid | xargs mv -t ../tiddlers/homebrew
grep -lE "^tags:.*\sHomebrew$" *.tid | xargs mv -t ../tiddlers/homebrew

echo Moving DM tiddlers
mkdir ../tiddlers/dm
grep -lE "^tags:.*\s\[\[Dungeon Master\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/dm
grep -lE "^tags:.*\s\[\[Dungeon Master\]\]$" *.tid | xargs mv -t ../tiddlers/dm
mkdir ../tiddlers/dm/encounters
grep -lE "^tags:.*\sEncounter\s.*$" *.tid | xargs mv -t ../tiddlers/dm/encounters
grep -lE "^tags:.*\sEncounter$" *.tid | xargs mv -t ../tiddlers/dm/encounters
mkdir ../tiddlers/dm/diseases
grep -lE "^tags:.*\sDisease\s.*$" *.tid | xargs mv -t ../tiddlers/dm/diseases
grep -lE "^tags:.*\sDisease$" *.tid | xargs mv -t ../tiddlers/dm/diseases
mkdir ../tiddlers/dm/madness
grep -lE "^tags:.*\sMadness\s.*$" *.tid | xargs mv -t ../tiddlers/dm/madness
grep -lE "^tags:.*\sMadness$" *.tid | xargs mv -t ../tiddlers/dm/madness
mkdir ../tiddlers/dm/poisons
grep -lE "^tags:.*\sPoison\s.*$" *.tid | xargs mv -t ../tiddlers/dm/poisons
grep -lE "^tags:.*\sPoison$" *.tid | xargs mv -t ../tiddlers/dm/poisons
grep -lE "^tags:.*\s\[\[Poison Type\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/dm/poisons
grep -lE "^tags:.*\s\[\[Poison Type\]\]$" *.tid | xargs mv -t ../tiddlers/dm/poisons
mkdir ../tiddlers/dm/traps
grep -lE "^tags:.*\sTrap\s.*$" *.tid | xargs mv -t ../tiddlers/dm/traps
grep -lE "^tags:.*\sTrap$" *.tid | xargs mv -t ../tiddlers/dm/traps
mkdir ../tiddlers/dm/rewards
mv reward.tid ../tiddlers/dm/rewards
mv blessing.tid ../tiddlers/dm/rewards
mv charm.tid ../tiddlers/dm/rewards
grep -lE "^tags:.*\sBlessing\s.*$" *.tid | xargs mv -t ../tiddlers/dm/traps
grep -lE "^tags:.*\sBlessing$" *.tid | xargs mv -t ../tiddlers/dm/traps
grep -lE "^tags:.*\sCharm\s.*$" *.tid | xargs mv -t ../tiddlers/dm/traps
grep -lE "^tags:.*\sCharm" *.tid | xargs mv -t ../tiddlers/dm/traps


echo Moving adventure tiddlers
mkdir ../tiddlers/adventures
mv winters-splendor-*.tid ../tiddlers/adventures
mv adventure.tid ../tiddlers/adventures

echo Moving entity tiddlers
mkdir ../tiddlers/entities
mv entity.tid ../tiddlers/entities
grep -lE "^tags:.*\sEntity\s.*$" *.tid | xargs mv -t ../tiddlers/entities
grep -lE "^tags:.*\sEntity$" *.tid | xargs mv -t ../tiddlers/entities
mkdir ../tiddlers/entities/locations
grep -lE "^tags:.*\sLocation\s.*$" *.tid | xargs mv -t ../tiddlers/entities/locations
grep -lE "^tags:.*\sLocation$" *.tid | xargs mv -t ../tiddlers/entities/locations
mkdir ../tiddlers/entities/organizations
grep -lE "^tags:.*\sOrganization\s.*$" *.tid | xargs mv -t ../tiddlers/entities/organizations
grep -lE "^tags:.*\sOrganization$" *.tid | xargs mv -t ../tiddlers/entities/organizations
mkdir ../tiddlers/entities/persons
grep -lE "^tags:.*\sPerson\s.*$" *.tid | xargs mv -t ../tiddlers/entities/persons
grep -lE "^tags:.*\sPerson$" *.tid | xargs mv -t ../tiddlers/entities/persons

echo Moving meta tiddlers
mkdir ../tiddlers/tiddlywiki
grep -lE "^tags:.*\sTiddlyWiki\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki
grep -lE "^tags:.*\sTiddlyWiki$" *.tid | xargs mv -t ../tiddlers/tiddlywiki
mkdir ../tiddlers/tiddlywiki/config
grep -lE "^tags:.*\sConfig\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/config
grep -lE "^tags:.*\sConfig$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/config
mkdir ../tiddlers/tiddlywiki/macros
grep -lE "^tags:.*\sMacro\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/macros
grep -lE "^tags:.*\sMacro$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/macros
mkdir ../tiddlers/tiddlywiki/templates
grep -lE "^tags:.*\sTemplate\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/templates
grep -lE "^tags:.*\sTemplate$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/templates
mv *template.tid ../tiddlers/tiddlywiki/templates
mkdir ../tiddlers/tiddlywiki/javascripts
grep -lE "^tags:.*\sJavascript\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/javascripts
grep -lE "^tags:.*\sJavascript$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/javascripts
mkdir ../tiddlers/tiddlywiki/data
grep -lE "^tags:.*\s\[\[Raw Data\]\]\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/data
grep -lE "^tags:.*\s\[\[Raw Data\]\]$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/data
mkdir ../tiddlers/tiddlywiki/stylesheets
grep -lE "^tags:.*\sStylesheet\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/stylesheets
grep -lE "^tags:.*\sStylesheet$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/stylesheets
mkdir ../tiddlers/tiddlywiki/tests
grep -lE "^tags:.*\sTest\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/tests
grep -lE "^tags:.*\sTest$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/tests
mkdir ../tiddlers/tiddlywiki/widgets
grep -lE "^tags:.*\sWidget\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/widgets
grep -lE "^tags:.*\sWidget$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/widgets
mkdir ../tiddlers/tiddlywiki/images
grep -lE "^tags:.*\sImage\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/images
grep -lE "^tags:.*\sImage$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/images
mkdir ../tiddlers/tiddlywiki/menubar
grep -lE "^tags:.*:/tags/MenuBar\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/menubar
grep -lE "^tags:.*:/tags/MenuBar$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/menubar

mkdir ../tiddlers/tiddlywiki/tables
grep -lE "^tags:.*\sTable\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/tables
grep -lE "^tags:.*\sTable$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/tables

mkdir ../tiddlers/tiddlywiki/notes
grep -lE "^tags:.*\sNote\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/notes
grep -lE "^tags:.*\sNote$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/notes

mkdir ../tiddlers/tiddlywiki/mainpage
grep -lE "^tags:.*\sMainPage\s.*$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/mainpage
grep -lE "^tags:.*\sMainPage$" *.tid | xargs mv -t ../tiddlers/tiddlywiki/mainpage

mv *.tid ../tiddlers
