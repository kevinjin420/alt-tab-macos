#!/usr/bin/env bash

set -ex

set -o pipefail && xcodebuild -workspace alt-tab-macos.xcworkspace -scheme Debug -derivedDataPath DerivedData | scripts/xcbeautify
file "$BUILD_DIR/$XCODE_BUILD_PATH/$APP_NAME.app/Contents/MacOS/$APP_NAME"
x   