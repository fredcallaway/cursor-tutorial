# Setup

## Recommended packages

- Error Lens: show warnings and errors inline
- Jupyter: edit and view notebooks; also provides a better interactive REPL
- Markdown All in One: actual Markdown support
- File Utils: create, move, delete files from command palette
- Paste and Indent: correctly formats pasted code
- Path Intellisense: autocomplete for file paths
- LaTeX, LaTeX Workshop, and LaTeX Utilities: if you don't like overleaf
- Standard language packages
  - R
  - Julia
  - Python

## Good keyboard shortcuts to know

- cmd-shift-P: open the command palette
- cmd-O: open a directory
- cmd-P: open a file in your current directory
- ctrl-R: open a recent directory

If you're a terminal person, run the "Install Code Command" command. Then you can use `code .` to open your current directory in Cursor.

## Suggested settings

See settings.json and keybindings.json. Paste these into your own configuration files, which you can open by searching for "usj" and "ksj" in the command palette. Make sure not to include the top level brackets (since those should already be there).

Look at what you're pasting---you might want to tweak things (especially the keybindings).

N.B. learning a short acronym for commands you use frequently is a good compromise between speed and ease (vs. defining and remembering keyboard shortcuts).

## AI rules

`cmd-shift-J` to open Cursor Settings (or search in command palette).

Here are my instructions:

- Restate the task before you begin solving it.  
- Briefly summarize the implementation plan before you begin coding. Make this very brief.  
- Do not add superfluous comments when the code itself is clear.  
- Do not provide explanations after writing code unless I ask for them.  


# Using the AI

- tab: very smart autocomplete; just start typing and let the AI finish the job
- cmd-K: quick edits to a specific section
- cmd-L: familiar interface for more involved edits (chat)
- cmd-I: more powerful interface for more involved edits (composer)

## Workflow

Pick either chat or composer and stick with it (within a coding session).

- Use chat/composer when...
  - starting from scratch
  - refactoring code
  - implementing large new features
- Use cmd-K when...
  - adding a small feature (e.g. a single plot)
  - editing existing code that is broken or incomplete (select the code first)
- Write it yourself (with tab's help) when...
  - It's faster for you to start coding than to verbally describe what you want
  - The other two methods aren't working well

If you get stuck with chat/composer, it often helps to go back to the old-fashioned way for a bit. Lay out the basic structure you want, without worrying about the little details. Then switch back to chat/composer.

# Questions

### How to put terminal in context?

- Keep the terminal in an editor rather than the panel.
  - Command: "Move Terminal into Editor Area"
  - Setting:
    ```json
    "terminal.integrated.defaultLocation": "editor"
    ```
- Cursor will usually automatically detect it and add it to context. If it doesn't, click on the terminal to add it to context

### Preventing or reverting unwanted changes
- When using chat/composer, use cmd-Y to accept edits one at a time
- Use Timeline / Local History to look at previous versions
- Use git and GitLens to see when a specific section of code changed (works best if you commit frequently!)

# Setting up R

I assume you have R installed (`which R` will tell you where it is).
If not, try using homebrew if you're on a mac. You will likely need
these dependencies as well:
```sh
brew install r harfbuzz fribidi freetype
brew install --cask cmake
```

This command (in terminal) prevent the annoying "which server" request when you install packages
```sh
echo 'options(repos = c(CRAN = "https://lib.stat.cmu.edu/R/CRAN/"))' > ~/.Rprofile
```

Install the R extension (REditorSupport.r) and the accompanying R package.
```r
install.packages("rlanguageserver")
```

Disable annoying linters ("error" messages about style) with this terminal command
```sh
echo 'linters: linters_with_tags("correctness")' > ~/.lintrc
```

Use httpgd for plots
```r
install.packages("httpgd")
```
settings:
```json
  "r.plot.useHttpgd": true
```

Use the radian console
```sh
pip3 install radian
which radian
```
settings (set radian path based on output of above command)
```json
  "r.rterm.mac": "YOUR RADIAN PATH",
  "r.bracketedPaste": true
```
