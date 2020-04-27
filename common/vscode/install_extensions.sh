#!/bin/bash

# Default values of arguments
WHAT_IF=0

# Process Args
for arg in "$@"; do
  case $(echo "$arg" | tr [:upper:] [:lower:]) in
    -whatif|--whatif)
      WHAT_IF=1
      shift
      ;;
  esac
done

extension_list="extension_list.txt"

for extension in $(cat $extension_list); do
  echo "Installing https://marketplace.visualstudio.com/items?itemName=$extension"
  if [ $WHAT_IF -ne 1 ]; then
    code --install-extension $extension
  fi
done
