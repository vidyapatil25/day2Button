//
//  AppDelegate.swift
//  day2Button
//
//  Created by Felix-ITS 012 on 18/10/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame:UIScreen.main.bounds)
        let viewController = UIViewController()
        window?.rootViewController = viewController
        window?.backgroundColor = .white
        let button1 = UIButton(frame: CGRect(x: 30, y: 40, width: 200, height: 50))
        viewController.view.addSubview(button1)
        button1.setTitle(" Button 1", for: .normal)
        button1.setTitle("Pressing 1...", for: .highlighted)
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button1.backgroundColor = .yellow
        button1.setTitleColor(UIColor.brown, for: .normal)
        //How to give action to this button
        button1.addTarget(self, action: #selector(pressButton(sender:)), for: .touchUpInside)
        window?.makeKeyAndVisible()
        //can I give same action to multiple buttons
        //Yes e.g
        
        let button2 = UIButton(frame: CGRect(x: 30, y: 130, width: 200, height: 50))
        button2.setTitle(" Button 2", for: .normal)
        button2.setTitle("Pressing 2...", for: .highlighted)
        
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button2.backgroundColor = .yellow
        button2.setTitleColor(UIColor.brown, for: .normal)
        //How to give action to this button
        button2.addTarget(self, action: #selector(pressButton(sender:)), for: .touchUpInside)
        viewController.view.addSubview(button2)
        
        //How to make circular button
        let button3 = UIButton(frame: CGRect(x: 30, y: 220, width: 200, height: 200))
        button3.setTitle(" Button 3", for: .normal)
        button3.setTitle("Pressing 3...", for: .highlighted)
        
        button3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button3.backgroundColor = .yellow
        button3.layer.cornerRadius = (button3.bounds.width)/2
        button3.setTitleColor(UIColor.brown, for: .normal)
        //How to give action to this button
        button3.addTarget(self, action: #selector(pressButton(sender:)), for: .touchUpInside)
        viewController.view.addSubview(button3)
       
    
        return true
    }

    @objc func pressButton(sender:UIButton)
    {
        print("\(sender.titleLabel!.text!) pressed!!!")
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

