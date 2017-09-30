#!/usr/bin/env bash
#
# Creates a ready to use role from the proto role
#

# get the role product
echo "What is the product?"
read PRODUCT

# get the role action
echo "What is the Action?"
select ACTION in "create" "install" "configure"; do
    case $ACTION in
        create )  break;;
        install ) break;;
        configure ) exit;;
    esac
done

# get the role predicate
echo "What is the Predicate? (can be empty)"
read PREDICATE

# work out the name of the role
ROLE=${PRODUCT}_${ACTION}_${PREDICATE}

# work out the path to the role folder
FOLDER="${PWD%/*}/${ROLE}"

# copy the proto role as the new role
cp -rf . "${FOLDER}" && cd "${FOLDER}"

# tidy up a few files
rm readme.md && mv _readme.md readme.md && rm init.sh && rm -rf .git

# set up git
git init && git remote add origin https://github.com/prometeo-cloud/${ROLE} && git add .

echo "New role has been created at ${FOLDER}".