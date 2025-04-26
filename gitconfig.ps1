#Stolen from https://blog.gitbutler.com/how-git-core-devs-configure-git/
#Basic setup
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# Clearly Makes Git Better
git config --global column.ui auto                 # Displays branch names in a column format for better readability.
git config --global branch.sort -committerdate     # Sorts branches by the most recent commit date instead of alphabetical order.
git config --global tag.sort version:refname       # Sorts tags by version numbers, treating dotted numbers as integers for logical ordering.
git config --global init.defaultBranch main        # Sets the default branch name to "main" when initializing a new repository.
git config --global diff.algorithm histogram       # Uses the "histogram" diff algorithm, which is smarter and more modern than the default "myers" algorithm.
git config --global diff.colorMoved plain          # Highlights moved code in diffs with a distinct color.
git config --global diff.mnemonicPrefix true       # Replaces `a/` and `b/` in diff headers with more descriptive prefixes like `i/` (index) and `w/` (working directory).
git config --global diff.renames true              # Detects and displays renamed files in diffs.
git config --global push.default simple            # Sets the default push behavior to "simple," which pushes the current branch to the same name on the remote.
git config --global push.autoSetupRemote true      # Automatically sets up a remote tracking branch when pushing a new branch.
git config --global push.followTags true           # Ensures all local tags are pushed to the remote when pushing changes.
git config --global fetch.prune true               # Deletes local references to remote branches that no longer exist.
git config --global fetch.pruneTags true           # Deletes local references to remote tags that no longer exist.
git config --global fetch.all true                 # Fetches updates from all remotes.

# Why the Hell Not?
git config --global help.autocorrect prompt        # Prompts for confirmation when Git autocorrects a mistyped command.
git config --global commit.verbose true            # Includes the diff output in the commit message editor for better context.
git config --global rerere.enabled true            # Enables reuse of recorded resolutions for rebase conflicts.
git config --global rerere.autoupdate true         # Automatically applies recorded resolutions during rebases.
git config --global core.excludesfile ~/.gitignore # Specifies a global `.gitignore` file for ignoring patterns across all repositories.
git config --global rebase.autoSquash true         # Automatically squashes commits marked with "fixup!" during rebases.
git config --global rebase.autoStash true          # Stashes changes automatically before rebasing and applies them afterward.
git config --global rebase.updateRefs true         # Updates branch references during rebases.

# A Matter of Taste
git config --global merge.conflictstyle zdiff3     # Adds a base version of conflicting changes in merge conflict markers for additional context.
#git config --global pull.rebase true               # Sets "rebase" as the default behavior for `git pull`.
git config --global core.fsmonitor true            # Enables a filesystem monitor to speed up operations like `git status`.
git config --global core.untrackedCache true       # Caches untracked files to improve performance in large repositories.
