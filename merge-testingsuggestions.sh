echo ""
echo "#######################"
echo "# Merge driver called #"
echo "#######################"
echo ""

echo "ancestor: $1" # passed in as %O
echo "---------"
cat $1
echo ""

echo " current: $2" # passed in as %A, also expected location for the result
echo "---------"
cat $2
echo ""

echo "   other: $3" # passed in as %B
echo "---------"
cat $3
echo ""

echo "Resolving conflict ..." # save to %A where git expects result
sleep 2
echo "This is the merge result" > $2
echo "Conflict resolved!"

echo "resolved: $2"
echo "--------- merged as:"
cat $2
echo ""

exit 0
