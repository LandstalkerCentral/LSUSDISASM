# LSUSDISASM


A disassembly of the game Landstalker (USA) for documentation and fan-project purposes, which can be assembled back into a bit-perfect replica of the original rom file.


The purpose of this project will be to provide a disassembly of Landstalker with the following goals in mind : 
- Documenting as much content of the game as possible, to get a perfect understanding of how it works.
- Being able to re-assemble the game and obtain the same rom file as the original game.
- Giving fan-projects the ability to start from this disassembly by editing the game's code and assets.


## Documentation : 
Providing documentation of the game will be done mainly in two ways : 
- Commenting the disassembly's ASM code, proper formatting and splitting of binary data.
- Text files dispatched along documented data assets (structure, format, compression ...) and assembler code (algorithms, workflows, hardcoded stuff ...)


## Re-assembly : 
By providing the original US rom file of the game, one will be able to use the provided tools in order to :
- with split/split.bat, split the original rom file into a lot of small binary data files, to extract data chunks which are not included in the disassembly
- with build/build.bat, assemble the game from its disassembly and the extracted data chunks
The assembled game will be perfectly identical to the original one. 


## Starting point for fan projects :
It should be possible to start from this disassembly to modify the game's data and mechanics. 
- The game data obtained with split.bat can be edited individually before being included in the game with build.bat.
- The game's code can be edited in the disassembly. Beware : ASM 68k writing skills required !


## Naming conventions :
- Functions : DoSomethingLikeThis
- Rom Data Locations : DataChunkLikeThat
Disambiguation is made by the way they are accessed : functions are
branched or jumped into while data is pointed to, moved, etc.
- Enums : ENUM_VALUE_LIKE_THIS
- RAM locations : RAM_LOCATION_LIKE_THAT
Once again, disambiguation is natural, as enums are used as immediate
values while RAM locations are pointed to, moved, etc.


## Disasm folder organization :
The main goal is to clarify the game's data organization and creation
process by reflecting them in the folder structure.
- Most data is considered as assets and gathered by type for a
bottom-up approach : graphics, sound, scripting, etc., need to be
created first in order to use them in maps, cutscenes, etc.
- In an opposite top-down approach, map data is organized in an
"entry-oriented" way, to make each entry contain all that is specific to
the entry.
Editors can then edit assets individually, and point to them while
editing map entries.


## Git workflow guidelines :
### 'master' branch :
The documented disassembly in its initial form, and a starting point for feature/fix developments in other branches.   
Content produced from project LSUSRE.  
**No merge allowed onto this branch.**
### 'feature/xxx', 'fix/xxx' branches :
Single feature/fix developments which should stay optional patches by using declarations in file lspatches.asm.  
Created from master branch.  
Automatically updated with master branch progress through GitHub Actions.  
Content of these branches can then be combined into build branches.
### 'build/xxx' branches :
Branches which combine content from feature/fix branches in order to produce a consistent set of compatible changes which can be used as a stable starting point  for further projects.
### 'build/standard' :
Main build branch, containing all features and fixes considered as the maintained standard set.  
This is the recommended starting point to have fun playing with the game's code and content.
