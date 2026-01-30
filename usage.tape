# Where should we write the GIF?
Output tape.gif
Set Theme "Catppuccin Mocha"
Set Shell fish
Set FontSize 12
Set Width 1200
Set Height 600

# Shows the current state time block being tracked
# If nothing is tracked shows something like `no tracking active`
# If we're tracking something, describe the current task / project / category and total time.
Type "punch"
Sleep 250ms
Enter
Sleep 1s

# Starts tracking for employer work on History feature
Type "punch in -c employer -p 'History Event Sourcing' -t 'setup projections'"
Sleep 250ms
Enter
Sleep 1s

# Check status - should show what's running
Type "punch"
Sleep 250ms
Enter
Sleep 1s

# correct the current task description in the same time block
Type "punch correct -t 'setup projections and hydration'"
Sleep 250ms
Enter
Sleep 1s

# Switch to new task in same project - finishes current block, starts new one
Type "punch switch -t 'testing migration'"
Sleep 250ms
Enter
Sleep 1s

# Add some notes to current task, with the current timestamp
Type "punch log 'found edge case with null timestamps'"
Sleep 250ms
Enter
Sleep 1s

# Done with this task - stop tracking with summary
Type "punch out"
Sleep 250ms
Enter
Sleep 2s

# Start personal project work (category defaults to none if omitted)
Type "punch in -p punch -t 'arg parsing implementation'"
Sleep 250ms
Enter
Sleep 1s

# Quick meeting interruption
Type "punch out"
Sleep 250ms
Enter

Type "punch in -c employer -p meetings -t 'team standup'"
Sleep 250ms
Enter
Sleep 1s

Type "punch out"
Sleep 250ms
Enter
Sleep 1s

# Continue previous task (punch arg parsing)
Type "punch continue previous"
Sleep 250ms
Enter
Sleep 1s

# Oops, wrong task - void this block
Type "punch void"
Sleep 250ms
Enter
Sleep 1s

# card all time records
Type "punch card"
Sleep 250ms
Enter
Sleep 2s

# card specific project
Type "punch card -p 'History Event Sourcing'"
Sleep 250ms
Enter
Sleep 2s

# card by category
Type "punch card -c employer"
Sleep 250ms
Enter
Sleep 2s

# --- FUTURE / COMMENTED OUT FOR MVP ---

# # Show tally for today
# Type "punch tally --today"
# Sleep 250ms
# Enter
# Sleep 2s

# # Show tally for specific project
# Type "punch tally -p punch"
# Sleep 250ms
# Enter
# Sleep 2s

# # Show tally by category (employer vs personal)
# Type "punch tally -c employer --week"
# Sleep 250ms
# Enter
# Sleep 2s

# # card all projects
# Type "punch card projects"
# Sleep 250ms
# Enter
