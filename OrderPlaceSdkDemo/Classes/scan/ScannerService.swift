//
//  ScannerService.swift
//  testNewSdkSwift
//
//  Created by 陈培爵 on 2018/9/20.
//  Copyright © 2018年 PeiJueChen. All rights reserved.
//

import UIKit

class ScannerService: OrderPlaceService {
    private let scanVCId = "ScannerViewControllerNav"
    private var scanCallback: CallbackHandler? = nil;
    
    public var features: String = ""
    
    override func initialize() {

    }

    override func getServiceName() -> String {
        return "ScannerService"
    }

    override func handleMessage(method: String, body: NSDictionary, callback: CallbackHandler?) {
        switch method {
        case "scan":
            scanCallback = callback
            scan(callback: callback)
            return;
        default:
            break;
        }
    }
    
    func scan(callback: CallbackHandler?) {
        guard let NavController = OrderPlace.makeViewController(vcId: scanVCId) as? UINavigationController, let scanVC = NavController.topViewController as? ScannerViewController else {return}
        scanVC.features = features;
        scanVC.SVDelegate = self;
        vc.present(NavController, animated: true, completion: nil)
    }
    
    
}

extension ScannerService : ScannerViewDelegate {
    func scannerReulst(result: String) {
        print("result:\(result)")
        guard let callback = scanCallback else {return}
        callback.success(response: generateResultObject(true))
    }
}
