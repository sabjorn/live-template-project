#!/usr/bin/env bash
echo "removing git remote origin"
git remote remove origin

echo "configuring zcat to smudge/clean on Git commit; see '.git/config' for details"
git config filter.zcat.smudge "zcat -f"
git config filter.zcat.clean "zcat -f"

echo "creating Ableton Project Info directory (required for 'ableton project')"
mkdir Ableton\ Project\ Info
