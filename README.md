# Nemo Fun
This is my custom set of nemo action. This is one of my favorite joys of simply customisable software.

Add the files in `files/` to the following folder to use:
`/usr/share/nemo/actions`
I've added `install_actions.sh` script, but it's not much more than a `sudo cp...` command.

## Actions
 - `copy_cv` - just copies a cv to the desktop with a nice name. Means the recipient gets a nice CV file, whilst my archive can have clearly recognisable name referencing the company + date.
 - `heif2png` - converts `.heif` and `.heic` files to location. This is because the `.heic` format apple uses isn't widely understood by file managers / image viewers yet.
 - `md_to_pdf` - simply converts `.md` to `.pdf` using pandocs.
 - `move2serverSSH` - moves a file to another PC via ssh. Update with your own info. I use it to send downloaded videos to my TV.

## Notes:
 - `.sh` files use the same name as the `.nemo_action` file that calls them.

## Todo:
 - Add a git init option:
   - Runs throguh the github new repo stuff:
   - Opens internet w/ https://github.com/new
   - Prompts for the url
   - Commits
   - Add to list of git directories
     - List doesn't yet exits.
