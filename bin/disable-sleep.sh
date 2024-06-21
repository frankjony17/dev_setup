#!/bin/sh

disable_sleep() {
    # pmset commands: The pmset utility is used to configure power management settings on macOS.
	# disablesleep 1: Disables system sleep.
	#   sleep 0: Prevents the system from sleeping automatically.
	#   displaysleep 0: Prevents the display from sleeping automatically.
	#   disksleep 0: Prevents the disks from sleeping automatically.
	# systemsetup commands: The systemsetup utility configures system settings from the command line.
	#   -setcomputersleep Never: Prevents the computer from sleeping.
	#   -setdisplaysleep Never: Prevents the display from sleeping.
    
    warn "This will disable sleep on a macOS machine."
    debug "This affects the following system settings:
        - System sleep
        - Display sleep
    "
    sudo pmset -a disablesleep 1
    sudo pmset -a sleep 0
    sudo pmset -a displaysleep 0
    sudo pmset -a disksleep 0
    sudo systemsetup -setcomputersleep Never
    sudo systemsetup -setdisplaysleep Never
}

reenable_sleep() {
    warn "This will re-enable sleep on a macOS machine."
    debug "This affects the following system settings:
        - System sleep
        - Display sleep
    "
    sudo pmset -a disablesleep 0
    sudo pmset -a sleep 10
    sudo pmset -a displaysleep 10
    sudo pmset -a disksleep 10
    sudo systemsetup -setcomputersleep 10
    sudo systemsetup -setdisplaysleep 10
}
