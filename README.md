# Tangram Swift Sample

This is a sample iOS app written in Swift that displays maps using [Tangram ES](https://github.com/tangrams/tangram-es).

## Build and Run the Sample

0. Install Cocoapods
    
    If you don't already have the CocoaPods tool installed, follow the installation instructions here: https://guides.cocoapods.org/using/getting-started.html#getting-started
    
1. Run `pod install`
    
    To download the dependencies described in our [Podfile](/Podfile), run `pod install` from the repository root. You only need to do this once, or again if you change the dependencies in the Podfile.

2. Configure an app ID

    Open `TangramSwiftSample.xcworkspace` and navigate to the configuration window for the `TangramSwiftSample` target. In the `General` pane, find the `Bundle Identifier` field. Set a unique App ID in this field (usually these follow the form `com.my.namespace.TangramSwiftSample`).

3. Configure code signing

    In the same configuration window as the last step, navigate to the `Signing & Capabilities` pane. Make sure `Automatically manage signing` is enabled and select your iOS development team from the `Team` field below it.

4. Configure an API key for map tiles

    To display maps in the app, we need to access the [Nextzen](https://nextzen.org) map tile server. If you don't already have one, sign up for a free API key here: https://developers.nextzen.org/
    
    In the `TangramSwiftSample` workspace, navigate to `TangramSwiftSample/Info.plist`. In the Value field next to the `NextzenApiKey` key, enter your API key.
    
5. Build and run from the Xcode Workspace

    In the `TangramSwiftSample` workspace, select your deployment target in the top-left corner and press the Play button to build and run the app.
    
6. (Optional) Move your local app configuration to `Local.xcconfig`

    If you plan to work on this repository using git, you probably don't want to commit information like your code signing identity or an API key. Instead of keeping these in the tracked project files, you can put them in a [xcconfig file](https://help.apple.com/xcode/mac/8.3/#/dev745c5c974). This file will be kept un-tracked by our `.gitignore` and our Xcode project is configured to check this file for settings.
    
    Create a text file in the repository root named `Local.xcconfig` and add the following lines:
    ```
    DEVELOPMENT_TEAM = 
    PRODUCT_BUNDLE_IDENTIFIER = 
    NEXTZEN_API_KEY = 
    ```

    After completing the configuration steps above, run `git diff` on the repository to see the changes in the project files. The diff will show added values in the Xcode project files that correspond to the fields in our new xcconfig file. Copy the values into the xcconfig file.
    
    With the xcconfig file completed and saved, you can remove your local app configuration from the tracked project files by running `git checkout` on any changed files.
    
    
