# Template Rp One

A Starter Flutter template with pre built Splash Screen with BLoC, Shared Prefs and dio by Ritik Patle.

## Getting Started
- Rename the template as per your need.
- Change the App Logo.
- - Take your image rename it as 'logo.png' and replace it with assets/logo/logo.png
- - Take your images and replace it with android/app/src/main/res/
- - Take your appiconset folder and replace it with ios/Runner/Assets.xcassets/AppIcon.appiconset
- Change your app title from lib/utils/app_constant_utils -> appTitle
- Run 'flutter clean' on your terminal.
- Run 'flutter pub get' on your terminal.
- Run 'flutter run' on your terminal.

## Directories Metadata
- assets -> Contains all the images fonts etc.
- - assets/logo -> Contains all the logos used in the app.
- lib/bloc -> Contains BLoC
- lib/models -> Contains all the Models and Custom Data Types
- lib/repositories -> Contains all data related functionalities such as API Repo, Server Connections, Shared Preference or local storage function etc.
- - lib/repositories/shared_preferences/shared_preferences_repo -> Contains all Shared Preferences Methods.
- - lib/repositories/shared_preferences/shared_preferences_keys -> Contains all Shared Preferences Key.
- lib/ui -> Contains all UI related things.
- - lib/ui/screens -> Contains all Screens UI
- - lib/ui/custom_widgets -> Contains all the Custom Widgets UI
- lib/utils -> Contains all the utilities such as Colors, Texts, Image picking Utility etc.
- - lib/utils/app_constants_utils -> Contains App Title, MainPadding, Splash Seconds, Splash Screen Logo Size etc.
- - lib/utils/app_functions -> All common functions of app such as error printing.
- - lib/utils/asset_image_utils -> All images path shall be registered here so we can use it as objects
- - lib/utils/color_utils -> All colors can be registered here.
- - lib/utils/string_utils -> All strings shall be registered here.