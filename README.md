# opus
Opus time tracking inspired by [zeit](https://github.com/mrusme/zeit)

## Why something different
I want more 'granular' things. I want to be able to track 'initiatives' inside a project.
Eg for my employer I could have a project / codebase `backend` where I'm implementing a feature / initiative like `History` with a task `Data modelling`.

The question is, is this 'nested' thing really useful, or should I just tag projects with a type of 'category' 'overarching project'

Eg project could be `History` with a tag / client / beneficiary `employer`

I also want to be able to quickly add 'meeting' or other type of 'interruptions'. Maybe you could do something like `opus interrupt -p backend -t meeting <note>`. This might make it hard, perhaps just some shorthands in fish might make this better actually. You start getting weird states if we do this, eg what does 'continue' do, you need to keep track of multiple things. If you amend / or finish it, does it continue with the old one etc.

## Usage
Check our [vhs](https://github.com/charmbracelet/vhs) [tape](./usage.tape)

## Wants / Nice to haves
Nice, interesting statistics in the CLI itself
- Colour would be nice
- Blocks and stupid bars / graphics

Output
- Maybe somehow we could output it into something useful, eg a time sheet per project / category whatever

Integration
- Maybe integrate with github status / Linear to read what we are doing
- Maybe integrate / see where we are (calling PWD might be associated with a project / client / category)

Waybar integration
- See Status (Running? Task / Project / Time)
