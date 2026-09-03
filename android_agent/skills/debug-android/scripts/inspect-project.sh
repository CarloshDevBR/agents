#!/bin/sh
set -eu

project_dir=${1:-.}

if [ ! -d "$project_dir" ]; then
    echo "Project directory not found: $project_dir" >&2
    exit 2
fi

echo "Project: $(cd "$project_dir" && pwd)"

for candidate in gradlew settings.gradle settings.gradle.kts build.gradle build.gradle.kts gradle/libs.versions.toml; do
    if [ -e "$project_dir/$candidate" ]; then
        echo "Found: $candidate"
    fi
done

echo "Gradle modules:"
find "$project_dir" -mindepth 2 -maxdepth 4 -type f \( -name build.gradle -o -name build.gradle.kts \) \
    -print 2>/dev/null | sed "s#^$project_dir/##" | sort

echo "Android plugins:"
find "$project_dir" -maxdepth 5 -type f \( -name build.gradle -o -name build.gradle.kts \) \
    -exec grep -H -E 'com\.android\.(application|library|test|dynamic-feature)' {} \; 2>/dev/null || true

echo "Compose indicators:"
find "$project_dir" -maxdepth 5 -type f \( -name build.gradle -o -name build.gradle.kts \) \
    -exec grep -H -E 'compose|org\.jetbrains\.kotlin\.plugin\.compose' {} \; 2>/dev/null || true
