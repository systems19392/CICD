#  CICD
Learn CICD 

## Helping Link
https://github.com/github/gitignore/blob/main/Swift.gitignore

## CodeMagic
https://docs.codemagic.io/yaml-basic-configuration/yaml-getting-started/
https://docs.codemagic.io/yaml-quick-start/building-a-native-ios-app/
https://www.youtube.com/watch?v=er7hRWhW0B0&list=PLrAxI-YVFPOr_kAo8oNELQaa2pFqoJGRk
https://blog.codemagic.io/codemagic-yaml-cheatsheet/


https://github.com/codemagic-ci-cd/cli-tools

xcode-project detect-bundle-id
keychain get-default
xcode-project clean
xcode-project run-tests --project "CICD.xcodeproj" --scheme "CICD"
xcode-project build-ipa \
  --project "CICD.xcodeproj" \
  --scheme "CICD" \
  --config "Release" \
  --export-options-plist "/Users/atif.saeed/export_options.plist"

cat <<EOL > ~/export_options.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>method</key>
	<string>app-store</string>
	<key>compileBitcode</key>
	<false/>
	<key>thinning</key>
	<string>none</string>
	<key>teamID</key>
	<string>U6Y3Y29W75</string>
	<key>signingStyle</key>
	<string>manual</string>
	<key>provisioningProfiles</key>
	<dict>
		<key>qa.vodafone.mcare.test1</key>
		<string>Vodafone_Qatar_Test1_AppStore</string>
	</dict>
</dict>
</plist>

EOL

rm -rf ~/Library/Developer/Xcode/DerivedData/*
xcodebuild clean


## Paython
https://thedataengineerblog.com/how-to-install-and-set-the-latest-python-version-as-default-on-macos-sequoia-and-sonoma