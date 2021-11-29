#!/bin/bash

# Pick a random tip by key
tipname=$(jq -r 'keys[]' tips.json | shuf | head -n 1)

# Print that key's value as the tip
tip=$(jq -r ."\"$tipname\"" tips.json)
echo "::set-output name=tip::$(echo $tip)"