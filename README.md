# case_test

Marali Starter  
[ Main ]  
Add the correct assets: logo, logo_foreground, splash_logo, fonts  
Add empty asset folders  
Fix meta data in pubspec.yaml  
  
[ Localization ]  
Flutter intl:initialize  
Uncomment settings flutter_intl in pubspec.yaml  
Remove standart folders  
  
[ App Icon / App Name / Splash ]   
Rename bundleId  
flutter pub global run rename --bundleId design.marali.appname  
  
Rename app name  
flutter pub global run rename --appname "Marali Starter"  
rename app via find and replace  
  
flutter pub get  
flutter pub run flutter_launcher_icons   
flutter pub run flutter_native_splash:create  
  
[ Spider ]  
spider build  
  
[ Codegen ]  
dart run build_runner watch --delete-conflicting-outputs
  
[ Theme ]  
Set InitSplashScreen colors  
Set colors for light / dark themes  

[ Git ]  
Remove all git files  
Init git  
Add develop branch  
  
[ Finish ]  
Remove this guide  
