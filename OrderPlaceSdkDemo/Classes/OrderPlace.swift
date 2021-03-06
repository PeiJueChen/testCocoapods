//
//  OrderPlace.swift
//  OrderPlaceSdk
//
//  Created by Peter Liu on 2/9/2018.
//

import Foundation
import UIKit


protocol OrderPlaceDelegate :AnyObject{
    
    func applicationOpenUrl(_ app: UIApplication, url: URL)
    //@objc optional func clicked() //optional
}


public class OrderPlace {
    
    static weak var OPDelegate: OrderPlaceDelegate?
    
    public static func makeViewController(vcId: String) -> UIViewController{
        
        let podBundle = Bundle(for: OrderPlace.self)
        
        print("podBundle", podBundle.bundlePath)
        
        let bundleURL = podBundle.url(forResource: "OrderPlaceSdk", withExtension: "bundle")
        
        var bundle = podBundle
        
        if(bundleURL != nil){
            bundle = Bundle(url: bundleURL!)!
        }
        
        let storyboard = UIStoryboard(name: "OrderPlaceStoryboard", bundle: bundle)
        
        print("storyboard", storyboard)
        
        let controller = storyboard.instantiateViewController(withIdentifier: vcId);
        
        
        return controller;
        
    }

    public static func openUrl(caller:UIViewController, url: String, features: String){
    
        print("open url")
        let controller = makeViewController(vcId: "OrderViewControllerNav") as! UINavigationController;
        
        let orderVC = controller.topViewController as! OrderViewController;
        
        orderVC.url = url;
        orderVC.features = features;
        
        self.OPDelegate = orderVC
        
        caller.present(controller, animated: true, completion: nil)
        
    }
    
    public static func openUrl(caller:UIViewController, url: String, features: String, services: Array<OrderPlaceService>){
        
        print("open url")
        
        let controller = makeViewController(vcId: "OrderViewControllerNav") as! UINavigationController;
        
        let orderVC = controller.topViewController as! OrderViewController;
        
        orderVC.url = url;
        orderVC.features = features;
        orderVC.extraServices = services;

        self.OPDelegate = orderVC
        
        caller.present(controller, animated: true, completion: nil)
        
        
        openUrl(caller: caller, url: url, features: features)
        
    }
    
    public static func scan(caller:UIViewController, features: String) {
        
        let controller = makeViewController(vcId: "ScannerViewControllerNav") as! UINavigationController;
        
        let scanVC = controller.topViewController as! ScannerViewController;
        
        scanVC.features = features;
        
        caller.present(controller, animated: true, completion: nil)
        
    }
    
    public static func application(_ app: UIApplication, open url: URL) {
        if let del = OPDelegate {
            del.applicationOpenUrl(app, url: url)
        }
    }
    public static func applicationDidFinishLaunching(_ application: UIApplication, launchOptions: [UIApplicationLaunchOptionsKey: Any]?, appId: String?) {
        print("appId:\(appId) ")
//        if (appId != nil) {
//            WXApi.registerApp(appId!)
//        }
    }
    
    
}
