//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import AppCenter
import AppCenterAnalytics
import AppCenterDistribute
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        startAppCenter()
        return true
    }

    private func startAppCenter() {
        let services: [AnyClass] = [MSAnalytics.self, MSDistribute.self]
        MSAppCenter.start(ApiKeys.appCenter, withServices: services)
    }
}
