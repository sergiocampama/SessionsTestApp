//
//  AppDelegate.swift
//  SessionsTestApp
//
//  Created by Sergio Campama on 24/2/24.
//
import FirebaseCore
import UIKit

struct FirebaseOptionsPlist {
  let clientID: String
  let reversedClientID: String
  let apiKey: String
  let gcmSenderID: String
  let bundleID: String
  let projectID: String
  let storageBucket: String
  let isAdsEnabled: Bool
  let isAnalyticsEnabled: Bool
  let isAppInviteEnabled: Bool
  let isGCMEnabled: Bool
  let isSignInEnabled: Bool
  let googleAppID: String
}

private let productionConfig = FirebaseOptionsPlist(
  clientID: "445606440735-nmgdjiedjntfcdf7gt3iie43v1r0sp5t.apps.googleusercontent.com",
  reversedClientID: "com.googleusercontent.apps.445606440735-nmgdjiedjntfcdf7gt3iie43v1r0sp5t",
  apiKey: "AIzaSyDuO9g8DnojBpuHdLdZW37iCbC1Ng_udGs",
  gcmSenderID: "692425658344",
  bundleID: "dev.kaipi.SessionsTestApp",
  projectID: "sessionserror",
  storageBucket: "sessionserror.appspot.com",
  isAdsEnabled: false,
  isAnalyticsEnabled: false,
  isAppInviteEnabled: true,
  isGCMEnabled: true,
  isSignInEnabled: true,
  googleAppID: "1:692425658344:ios:7e2138099e0f7a3b185e5d"
)

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    let options = FirebaseOptions(
      googleAppID: productionConfig.googleAppID,
      gcmSenderID: productionConfig.gcmSenderID
    )

    options.apiKey = productionConfig.apiKey
    options.clientID = productionConfig.clientID
    options.projectID = productionConfig.projectID
    options.storageBucket = productionConfig.storageBucket
    options.bundleID = productionConfig.bundleID

    FirebaseApp.configure(options: options)

    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }


}

