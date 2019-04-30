# This script will run a quick demo of the merge driver.
# It will cause a merge conflict in a 'TESTINGSUGGESTIONS.md' file.
# -------------------------------------------------------

# Run the mergetool-setup.sh script to configure the merge driver
./mergetool-setup.sh

# Add the merge-testing-suggestions.sh to PATH
PATH=$PATH:`pwd`

# Clean up any previous example runs
git checkout midnode-merger
git branch -D demo-branch-1
git branch -D demo-branch-2

# Create 'TESTINGSUGGESTIONS.md' on branch 1
git checkout -b demo-branch-1
echo "\n### created on: demo-branch-1\n" > TESTINGSUGGESTIONS.md
git add TESTINGSUGGESTIONS.md
git commit -m "demo-branch-1: added TESTINGSUGGESTIONS.md"

# Create 'TESTINGSUGGESTIONS.md' on branch 2
git checkout master
git checkout -b demo-branch-2
echo "\ncreated on: demo-branch-2\n" > TESTINGSUGGESTIONS.md
git add TESTINGSUGGESTIONS.md
git commit -m "demo-branch-2: added TESTINGSUGGESTIONS.md"

# Merge the two branches, causing a conflict
git merge -m "Merged in demo-branch-1" demo-branch-1
