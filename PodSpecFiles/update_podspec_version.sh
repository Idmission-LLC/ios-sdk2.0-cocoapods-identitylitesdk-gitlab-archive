#!/bin/bash

#!/bin/bash

NEW_VERSION="$1"

cd "$(dirname "$0")"   # go to PodSpecFiles/

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
  sed -i '' -E "s/(spec\.version[[:space:]]*=[[:space:]]*\")[^\"]*(\")/\1${NEW_VERSION}\2/" "${file}"
done
