#!/bin/sh

# Send the header so that i3bar knows this is JSON
echo '{"version":1}'

# Begin endless array
echo '['

# First array is empty
echo '[],'

# Now send blocks with information forever
exec conky -c "$HOME"/.i3/conky/conkyrc
