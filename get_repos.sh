# export ORG=org_name
# export USER_CREDENTIALS="username:password"
curl --user $USER_CREDENTIALS --include --request GET "https://api.github.com/orgs/$ORG/repos" | grep full_name | cut -f 2 -d'/' | cut -f 1 -d'"'
curl --user $USER_CREDENTIALS --include --request GET $CURRENT_URL | grep "rel=\"last\""

# ##########################################
ORG_URL="https://api.github.com/orgs/$ORG/repos"
repositories=$(curl --user $USER_CREDENTIALS --include --request GET $ORG_URL | grep full_name | cut -f 2 -d'/' | cut -f 1 -d'"')
for CURRENT_REPOSITORY in ${repositories[@]}; do
	echo "$ORG/$CURRENT_REPOSITORY"
done
git clone "https://github.com/$ORG/$CURRENT_REPOSITORY.git";
