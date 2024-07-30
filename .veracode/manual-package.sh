#!/bin/bash
set -e
pushd ..

pushd "$(dirname "$0")" >/dev/null 2>&1
repo_root=`git rev-parse --show-toplevel`
output_dir="$repo_root/.veracode/output/manual"



echo "Running gradle command ..."
./gradlew  clean build -x test;

if [ $? -eq 0 ]; then
    echo "Gradle build successful."
    mkdir -p "$output_dir"
    cp -rf app/build/libs/*.jar "$output_dir/"
  else
    echo "Gradle build failed."
fi
popd >/dev/null 2>&1
