# DevSetup

This repository contains my configuration files, along with scripts, settings, and small tools that enhance my productivity on a daily basis.

## Installation

To install, clone this repository and run ./setup.sh from within the repository directory.

## Structure

```shell
.
├── bin/        # Scripts and binaries that should always be available (added to $PATH)
├── setup/      # Installation scripts executed by the main ./setup.sh file for proper installation
├── home/       # Files that should be linked to the user’s $HOME directory
├── fonts/      # A directory with submodules for various fonts to be installed
└── shell/      # ZSH shell configuration, aliases, and plugins
```

## Caveats

This project is a work in progress and will always have room for improvement.

Keep the following in mind if you wish to use or extend it:

	•	Changes can affect multiple files, which may cause some confusion
	•	There is no parallelism in the execution of scripts
	•	The script may be interrupted when requesting sudo permissions at certain steps
	•	There is no upgrade option, only reinstallation