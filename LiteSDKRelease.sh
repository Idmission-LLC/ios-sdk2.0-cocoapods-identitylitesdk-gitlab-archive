#!/bin/sh

# Fail immediately on error
set -e

# Validate input
if [ -z "$1" ]; then
  echo "❌ Usage: $0 <SDK_VERSION>"
  exit 1
fi

SDK_VERSION=$1

cd "$(dirname "$0")"   # go to identitylitesdk2.0/

## Check if branch is clean
#if [ -n "$(git status --porcelain)" ]; then
#  echo "✅ LiteSDK: Found uncommitted changes, proceeding."
#else
#  echo "❌ LiteSDK: No changes to commit. Working tree is clean."
#  exit 1
#fi

# Update .podspec file version
echo "🚀 LiteSDK: Updating All .podspec file vesions"
for file in FingerPrintCaptureLite.podspec \
            IDCaptureLite.podspec \
            IDentityLiteModels.podspec \
            IDentityLiteSDK2.0.podspec \
            SelfieCaptureLite.podspec \
            SignatureCaptureLite.podspec \
            VideoCaptureLite.podspec \
            VoiceCaptureLite.podspec
do
  echo "Updating ${file} …"
  sed -i '' -E "s/(spec\.version[[:space:]]*=[[:space:]]*\")[^\"]*(\")/\1${SDK_VERSION}\2/" "${file}"
done

# Check if tag already exists
if git rev-parse "$SDK_VERSION" >/dev/null 2>&1; then
 echo "❌ Tag '$SDK_VERSION' already exists. Please choose a different version."
 exit 1
fi

# Commit changes
echo "🚀 LiteSDK: Adding & committing changes…"
git add .
git commit -m "Updated SDK v${SDK_VERSION}"

# Push to remote master
echo "⬆️ LiteSDK: Pushing to origin master…"
git push origin master

# Create & push tag
echo "🏷️ LiteSDK: Creating and pushing tag '${SDK_VERSION}'…"
git tag "${SDK_VERSION}"
git push origin "${SDK_VERSION}"

echo "✅ Done! LiteSDK updated and tagged as '${SDK_VERSION}'."
