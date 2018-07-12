# export USER=username
# export DOMAIN=orgname_or_username
# export PASS=user_pass
# export REPO=repo

curl --user "$USER:$PASS" --include --request GET "https://api.github.com/repos/$DOMAIN/$REPO/labels"

# Delete default labels
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$DOMAIN/$REPO/labels/bug"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$DOMAIN/$REPO/labels/duplicate"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$DOMAIN/$REPO/labels/enhancement"
# curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$DOMAIN/$REPO/labels/invalid"
curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$DOMAIN/$REPO/labels/question"
# curl --user "$USER:$PASS" --include --request DELETE "https://api.github.com/repos/$DOMAIN/$REPO/labels/wontfix"


# Create labels
curl --user "$USER:$PASS" --include --request POST --data '{"name":"accepted","color":"66aa00"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"reproduced","color":"006600"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"cantreproduce","color":"996361"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"fixcommitted","color":"003B84"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"bluesky","color":"66ccff"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"duplicate","color":"aaaaaa"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"declined","color":"83000C"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"new","color":"ff1177"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"fixreleased","color":"3f3f3f"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"resolved","color":"3f3f3f"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"
curl --user "$USER:$PASS" --include --request POST --data '{"name":"wishlist","color":"66Aa00"}' "https://api.github.com/repos/$DOMAIN/$REPO/labels"