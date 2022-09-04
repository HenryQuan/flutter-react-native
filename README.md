# Flutter React Native
Use React Native in a Flutter app.

This demo app shows how you can embed React Native in Flutter. It saves a flag to determine which one should be shown on startup. You can toggle between Flutter and React Native by tapp9ng the button in the top right corner.

This is a POC of my WoWs Info app. I am working on a full Flutter rework which contains major UI changes. For better or worse, my users won't like it. That's why I had this idea of asking my users to pick which one their prefer. Slowly after a few updates, I will remove the old React Native app so this is like a transition to Flutter. 

## How to run
You will need to setup both `Flutter` and `React Native` environment to run this app. Once you have them setup, you can run it like you run a normal Flutter app with `flutter run`. However, you need to run `npx yarn start` to host the React Native app while debugging. 

## How to build for release
There is one additional step while building the app for release. You need to run `npx yarn build-android` to build the bundle. The app can still run without it, but it will crash whenever you switch to React Native.
