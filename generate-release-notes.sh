#!/bin/bash

# Initialize release notes
release_notes=""

# Get the commit messages since the last release
for commit in $(git log --pretty=format:"%s" $(git describe --tags --abbrev=0)..HEAD); do
  release_notes+="\n- $commit"
done

# Print the release notes
echo -e "## Release Notes\n$release_notes"
