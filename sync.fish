#!/usr/bin/env fish

if status is-interactive
    echo "script runned by user"
else
    echo "script imported by other script"
end
