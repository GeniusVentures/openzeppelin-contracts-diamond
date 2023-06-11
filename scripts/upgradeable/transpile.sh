#!/usr/bin/env bash

set -euo pipefail -x

npm run compile

build_info=($(jq -r '.input.sources | keys | if any(test("^contracts/mocks/.*\\bunreachable\\b")) then empty else input_filename end' artifacts/build-info/*))
build_info_num=${#build_info[@]}

if [ $build_info_num -ne 1 ]; then
  echo "found $build_info_num relevant build info files but expected just 1"
  exit 1
fi

# -D: delete original and excluded files
# -b: use this build info file
# -i: use included Initializable
# -x: exclude all proxy contracts except Clones library
# -p: emit public initializer
# -E: extract storage for Diamond Pattern
npx @gnus.ai/upgrade-safe-transpiler-diamond@latest -D -E \
  -b "$build_info" \
  -i contracts/proxy/utils/Initializable.sol \
  -x 'contracts/proxy/**/*' \
  -x 'contracts-exposed/**/*' \
  -x '!contracts/proxy/Clones.sol' \
  -x '!contracts/proxy/ERC1967/ERC1967Storage.sol' \
  -x '!contracts/proxy/ERC1967/ERC1967Upgrade.sol' \
  -x '!contracts/proxy/utils/UUPSUpgradeable.sol' \
  -x '!contracts/proxy/beacon/IBeacon.sol' \
  -p 'contracts/**/presets/**/*' \
  -p 'contracts/utils/escrow/Escrow.sol'

