class RootController < UIViewController
  def viewDidLoad
    super
    @button = UIButton.buttonWithType UIButtonTypeRoundedRect
    @button.frame = [[50, 50], [150, 40]]
    @button.setTitle("modal with Teacup", forState: UIControlStateNormal)
    self.view.addSubview @button
    
    @button.addTarget(self, action: 'goToModalController', forControlEvents: UIControlEventTouchUpInside)
    
    @button2 = UIButton.buttonWithType UIButtonTypeRoundedRect
    @button2.frame = [[50, 250], [150, 40]]
    @button2.setTitle("modal without Teacup", forState: UIControlStateNormal)
    self.view.addSubview @button2
    
    @button2.addTarget(self, action: 'goToModal2Controller', forControlEvents: UIControlEventTouchUpInside)
  end
  
  def goToModalController
    controller = ModalController.alloc.init
    present_modal(controller, target: self)
  end
  
  def goToModal2Controller
    controller = Modal2Controller.alloc.init
    present_modal(controller, target: self)
  end
end