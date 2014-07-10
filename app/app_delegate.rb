class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
  @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  @window.makeKeyAndVisible

  #@blue_view = UIView.alloc.initWithFrame(CGRectMake(10, 10, 100, 100))
  #@blue_view.backgroundColor = UIColor.blueColor
  #@window.addSubview(@blue_view)
  controller = TapController.alloc.initWithNibName(nil, bundle: nil)
  nav_controller = UINavigationController.alloc.initWithRootViewController(controller)

  other_controller = UIViewController.alloc.initWithNibName(nil, bundle: nil)
  other_controller.title = "Other"
  other_controller.view.backgroundColor = UIColor.purpleColor

  tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
  tab_controller.viewControllers = [nav_controller, other_controller]
  @window.rootViewController = tab_controller


#  @window.rootViewController = UINavigationController.alloc.initWithRootViewController(controller)


#@green_view = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
  #@green_view.backgroundColor = UIColor.greenColor
  #@window.addSubview(@green_view)

  #@red_view  = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
  #@red_view.backgroundColor = UIColor.redColor
   #NOTE: *not* adding to @window
  #@blue_view.addSubview(@red_view)

    puts "Hello again!"
    puts "hello from console"
    true
  end
end
