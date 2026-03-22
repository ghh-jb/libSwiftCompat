# libSwiftCompat
# Why?
An attempt to backport max.app libSwiftCore functions to make it run on iOS 15.2. Well, I succeeded. 

The functions used in max.app from libSwiftCore:

_$ss22CodingKeyRepresentableP06codingB0s0aB0_pvgTj <br>
_$ss22CodingKeyRepresentableP06codingB0xSgqd___tcs0aB0Rd__lufCTj <br>
_swift_isUniquelyReferenced <br>
_swift_isUniquelyReferenced_nonNull <br>
_swift_isUniquelyReferenced_nonNull_bridgeObject <br>
_$ss22CodingKeyRepresentableMp <br>
_$ss22CodingKeyRepresentableP06codingB0s0aB0_pvgTq <br>
_$ss22CodingKeyRepresentableP06codingB0xSgqd___tcs0aB0Rd__lufCTq <br>

The project backported them and I was able to launch an app on iOS 15.2

# Building
Make sure you have theos installed <br>
Specify your sdk in Makefile and run <br>
`make package` <br>
in the root directory of the project. <br>
Then install the provided deb via filza. <br>

# Patching an app
Decrypt (crack) an ipa and unarchive it <br>
Install odcctools from your package manager main repo (procursus OR palera1n strap OR Bingner/Elucubratus) <br>
Open terminal and locate the decrypted MAX main executable <br>
Save an original copy or extract entitlements to the file with: `ldid -e /path/to/MAX >> ents.plist` <br>
run: <br>
`sudo install_name_tool -change /usr/lib/swift/libswiftCore.dylib /usr/local/lib/libSwiftCompat.dylib /path/to/MAX` - if you are on rootful jailbreak

`sudo install_name_tool -change /usr/lib/swift/libswiftCore.dylib /var/jb/usr/local/lib/libSwiftCompat.dylib ./MAX` - if you are on rootless

After that - resign with saved entitlements: <br>
`ldid -S/path/to/ents.plist /path/to/MAX`

In the installation replace the MAX executable with the patched one. if app crashes - resign all files in the app directory (frameworks, bundled libraries) with `ldid -S -M (...)`

After that it should work.

# Tested devices
- iPhone SE 2020 - iOS 15.2 - Fugu15_Rootful/Dopamine_Rootful + libhooker tweak injector


# LICENSE
GNU GENERAL PUBLIC LICENSE Version 3