import AppCenter
import AppCenterAnalytics
import AppCenterDistribute
import AppCenterCrashes
import UIKit
import HandsAppUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, HandsAppDelegate {
    var window: UIWindow?

    var theme: Theme.Type {
        return DefaultTheme.self
    }

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        startAppCenter()
        return true
    }

    private func startAppCenter() {
        let services: [AnyClass] = [MSAnalytics.self, MSDistribute.self, MSCrashes.self]
        MSAppCenter.start(ApiKeys.appCenter, withServices: services)
    }
}
