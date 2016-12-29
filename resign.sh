#cp testB.ipa testB.zip
unzip testB.ipa
cp Foo2.mobileprovision Payload/testB.app/embedded.mobileprovision
#certifierName='iPhone Distribution: Beijing Yanyuan Finance & Taxation Consulting Co., Ltd.'
codesign -f -s 'iPhone Distribution: Beijing Yanyuan Finance & Taxation Consulting Co., Ltd.'  --entitlements entitlements.plist Payload/testB.app

#codesign -f -s $certifierName Payload/testB.app
#codesign -f -s 'iPhone Distribution: Beijing Yanyuan Finance & Taxation Consulting Co., Ltd.' --entitlements entitlements.plist --resource-rules Payload/testB.app/Info.plist Payload/testB.app

#codesign -f -s 'iPhone Distribution: Beijing Yanyuan Finance & Taxation Consulting Co., Ltd.' Payload/testB.app


#zip -r testB.ipa Payload
#zip testB2.ipa  Payload


xcrun -sdk iphoneos PackageApplication -v Payload/testB.app -o ~/testB.ipa
#xcrun -sdk iphoneos xcodebuild -exportArchive -archivePath Payload/testB.app -exportPath ~/testB.ipa -exportOptionsPlist entitlements.plist
