# Where should we write the GIF?
Output tape.gif
Set Theme "Catppuccin Mocha"
Set Shell fish
Set FontSize 12
Set Width 1200
Set Height 600

# Shows the current state time block being tracked
# If nothing is tracked shows something like `no tracking active`
# If we're tracking something to describe the current task / project / category and total time.
Type "opus"
Sleep 250ms
Enter

# Starts a tracking task for project: opss with task 'testing argument parsing'
Type "opus start -p opss -t 'testing argument parsing'"
Sleep 250ms
Enter

# Changes the project to 'opus', in the current time block
Type "opus amend -p opus"
Sleep 250ms
Enter

# Switches task in the same project, finish the time block, thus starting a new one
Type "opus switch -t 'new ttask'"
Sleep 250ms
Enter

# Changes the current task to 'new task!' in the same time block
Type "opus amend -t 'new task!'"
Sleep 250ms
Enter

# Stops tracking
# Gives some small info, how long we were on it etc
Type "opus done"
Sleep 250ms
Enter

# Continues last task / project
# When we add -t it just continues the same project, but with a new task
Type "opus continue -t 'new task'"
Sleep 250ms
Enter

# Forgets / removes the current tracking block.
Type "opus forget"
Sleep 250ms
Enter

# Lists all time records
Type "opus list"
Sleep 250ms
Enter

# Lists all projects (without tasks)
Type "opus list projects"
Sleep 250ms
Enter

# Lists all projects and tasks, maybe with a less / page or whatever to make it UNIX compat
Type "opus list tasks <PROJECT>"
Sleep 250ms
Enter

Sleep 5s
