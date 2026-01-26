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
Type "opus"
Sleep 250ms
Enter
Sleep 1s

# Starts tracking for employer work on History feature
Type "opus start -c employer -p 'History Event Sourcing' -t 'setup projections'"
Sleep 250ms
Enter
Sleep 1s

# Check status - should show what's running
Type "opus"
Sleep 250ms
Enter
Sleep 1s

# Amend the current task description in the same time block
Type "opus amend -t 'setup projections and hydration'"
Sleep 250ms
Enter
Sleep 1s

# Switch to new task in same project - finishes current block, starts new one
Type "opus switch -t 'testing migration'"
Sleep 250ms
Enter
Sleep 1s

# Add some notes to current task, with the current timestamp
Type "opus log 'found edge case with null timestamps'"
Sleep 250ms
Enter
Sleep 1s

# Done with this task - stop tracking with summary
Type "opus done"
Sleep 250ms
Enter
Sleep 2s

# Start personal project work (category defaults to none if omitted)
Type "opus start -p opus -t 'arg parsing implementation'"
Sleep 250ms
Enter
Sleep 1s

# Quick meeting interruption
Type "opus done"
Sleep 250ms
Enter

Type "opus start -c employer -p meetings -t 'team standup'"
Sleep 250ms
Enter
Sleep 1s

Type "opus done"
Sleep 250ms
Enter
Sleep 1s

# Continue previous task (opus arg parsing)
Type "opus continue previous"
Sleep 250ms
Enter
Sleep 1s

# Oops, wrong task - forget this block
Type "opus forget"
Sleep 250ms
Enter
Sleep 1s

# List all time records
Type "opus list"
Sleep 250ms
Enter
Sleep 2s

# List specific project
Type "opus list -p 'History Event Sourcing'"
Sleep 250ms
Enter
Sleep 2s

# List by category
Type "opus list -c employer"
Sleep 250ms
Enter
Sleep 2s

# --- FUTURE / COMMENTED OUT FOR MVP ---

# # Show stats for today
# Type "opus stats --today"
# Sleep 250ms
# Enter
# Sleep 2s

# # Show stats for specific project
# Type "opus stats -p opus"
# Sleep 250ms
# Enter
# Sleep 2s

# # Show stats by category (employer vs personal)
# Type "opus stats -c employer --week"
# Sleep 250ms
# Enter
# Sleep 2s

# # List all projects
# Type "opus list projects"
# Sleep 250ms
# Enter
