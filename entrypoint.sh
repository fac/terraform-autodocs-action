#!/bin/bash

echo "----------------------------------"
echo "Generating Terraform Documentation"
echo "----------------------------------"

echo "Directories to be processed:"
echo $directories
echo " "

for directory in $directories
do
  echo "Processing ${directory}"
  if test -f "${directory}/INFO.md"; then
    echo "INFO.md exists auto creating docs in README.md" 
    terraform-docs -c /code/.terraform-docs.yml $options $directory > ${directory}/README.md
    echo "Done"
  else
    echo "No INFO.md file exists. Skipping ${directory}"
  fi
echo " "
done
