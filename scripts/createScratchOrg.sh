#!/bin/bash
source `dirname $0`/config.sh
s
execute() {
  $@ || exit
}

if [ -z "$DEV_HUB_URL" ]; then
  echo "set default devhub user"
  execute sfdx force:config:set defaultdevhubusername=$DEV_HUB_ALIAS

  echo "deleting old scratch org"
  sfdx force:org:delete -p -u $SCRATCH_ORG_ALIAS
fi

echo "Creating scratch org"
execute sfdx force:org:create -a $SCRATCH_ORG_ALIAS -s -f ./config/project-scratch-def.json -d 30

echo "Make sure Org user is english"
sfdx force:data:record:update -s User -w "Name='User User'" -v "Languagelocalekey=en_US"

echo "Pushing changes to scratch org"
execute sfdx force:source:push

echo "Running Salesforce Code Analyser"
sfdx scanner:run --format table --target force-app --engine "pmd" --pmdconfig "ruleset.xml"
sfdx scanner:run:dfa --format table --target force-app --projectdir force-app