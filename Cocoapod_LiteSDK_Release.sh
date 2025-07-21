#!/bin/sh

cd "$(dirname "$0")"   # go to identitylitesdk2.0/

#Push All PodSpec file to CocoapodsTrunk
pod spec lint

#Push All PodSpec file to CocoapodsTrunk
echo "⬆️ LiteSDK: Pushing to Cocoapod Trunk"
pod trunk push FingerPrintCaptureLite.podspec
pod trunk push IDCaptureLite.podspec
pod trunk push SelfieCaptureLite.podspec
pod trunk push IDentityLiteModels.podspec
pod trunk push SignatureCaptureLite.podspec
pod trunk push VoiceCaptureLite.podspec
pod trunk push IDentityLiteSDK2.0.podspec
