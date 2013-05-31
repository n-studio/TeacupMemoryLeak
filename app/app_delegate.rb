class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.backgroundColor = UIColor.whiteColor
    rootController = RootController.alloc.init
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(rootController)
    @window.makeKeyAndVisible
    true
  end
end
