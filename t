#!/bin/sh
# Shorcut command to perform various common tests.

# Start with a clean slate to make this command's output stand out.
clear

# Check the formatting 
dart format --set-exit-if-changed lib test

# Analize the code.
flutter analyze

# Test and generate a coverage report on the default location.
flutter test --coverage --test-randomize-ordering-seed random

# Remove information about generated files on the report. We can asume that
# have been tested by the library authors. We are not interested in the 
# output of this command, redirect to /dev/null
lcov -r coverage/lcov.info '*.g.dart' -o coverage/lcov.info >/dev/null 2>&1
