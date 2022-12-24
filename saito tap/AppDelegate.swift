//
//  AppDelegate.swift
//  saito tap
//
//  Created by 丸井優希 on 2022/12/22.
//

import UIKit
import GoogleMobileAds
import NCMB

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    let applicationkey  = "496f622d25b177cb4d16684866f26cb0e2d79f113c19cf7b129c2ad29c94524d"
    let clientkey       = "8a880e0cadef02168257d74dcd717873db71233270dbed17a4a44c921b06328a"


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        NCMB.initialize(applicationKey: applicationkey, clientKey: clientkey)
        // Override point for customization after application launch.
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
