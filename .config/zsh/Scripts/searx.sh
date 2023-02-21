#!/usr/bin/env bash

SEARX=/home/phlight/.local/repositories/searx

# Change to the Searx installation directory.
cd $SEARX

# Initialize the Python virtual environment.
. env/bin/activate

# Start up Searx.
uwsgi --ini "${HOME}/.config/searx/searx.ini"
