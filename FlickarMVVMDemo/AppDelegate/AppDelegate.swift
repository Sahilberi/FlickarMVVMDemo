//
//  AppDelegate.swift
//  FlickarMVVMDemo
//
//  Created by sahil on 25/03/20.
//  Copyright © 2020 None. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    createDashboard()
    return true
  }

  private func createDashboard() {
    self.window = UIWindow(frame: UIScreen.main.bounds)

    let nav1 = UINavigationController()
    let recentCordinator = RecentImagesCordinator(navigationController: nav1)
    recentCordinator.start()

    let nav2 = UINavigationController()
    let listingCordinator = ListingCordinator(navigationController: nav2)
    listingCordinator.start()
    
    let nav3 = UINavigationController()
    let techonlogyCordinator = TechonlogyCordinator(navigationController: nav3)
    techonlogyCordinator.start()

    let tabController = UITabBarController()

    tabController.viewControllers = [nav2, nav1, nav3]

    let item1 = tabController.tabBar.items?[0]
    item1?.title = "Listing"
    item1?.image = UIImage(named: "book-cover")
    item1?.selectedImage = UIImage(named: "book-cover")

    let item2 = tabController.tabBar.items?[1]
    item2?.title = "Recent"
    item2?.image = UIImage(named: "RecentEmpty")
    item2?.selectedImage = UIImage(named: "RecentFilled")
    

    let item3 = tabController.tabBar.items?[2]
    item3?.title = "Recent"
    item3?.image = UIImage(named: "warningIconLight")
    item3?.selectedImage = UIImage(named: "infoIcon")

    
    tabController.selectedIndex = 0

    self.window!.rootViewController = tabController
    self.window?.makeKeyAndVisible()
  }
  
  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

