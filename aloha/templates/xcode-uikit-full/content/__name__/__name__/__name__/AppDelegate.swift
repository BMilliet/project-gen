import UIKit
import __name__Main

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        self.window = UIWindow(frame: UIScreen.main.bounds)
        guard let window = window else { return false }

        window.makeKeyAndVisible()
        MainApp.hello()

        return true
    }
}

