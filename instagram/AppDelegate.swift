//
//  AppDelegate.swift
//  instagram
//
//  Created by Diana Garcia Davalos on 3/8/21.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //copy fromvideo 2 @1:07
//        Parse.initialize(
//            with: ParseClientConfiguration(block:
//            { (configuration:
//            ParseMutableClientConfiguration) -> Void
//            in
//            configuration.applicationId =
//            "instagram"
//            configuration.server = "https://whispering-stream-51370.heroku.com/parse"
//
//        })
//
//        )
        
        
        //video 2 @1:40
//        if PFUser.current() != nil {
//            let main = UIStoryboard(name: "Main",
//                                    bundle: nil)
//            let FeedNavigationController = main.instantiateViewController(identifier:
//                                        "FeedNavigationController")
//            
//            window?.rootViewController = FeedNavigationController
//            
//        }
        
         //copy
        let parseConfig = ParseClientConfiguration {
                    $0.applicationId = "uA42HsplGiQjaErNi3CHIboVWa8Rl7X7OpV5f45T" // <- UPDATE
                    $0.clientKey = "MHHyRmWpOe2tdXPAo8CQr2VKssC23S6bSOgC1Skx" // <- UPDATE
                    $0.server = "https://parseapi.back4app.com/"
            }
            Parse.initialize(with: parseConfig)
        //end copy
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

