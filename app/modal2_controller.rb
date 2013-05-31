class Modal2Controller < UIViewController
  
  def viewDidLoad
    super
    
    self.view.addSubview UIView.alloc.init
    self.view.addSubview UIView.alloc.init
    self.view.addSubview UIView.alloc.init
    self.view.addSubview UIView.alloc.init
    self.view.addSubview UIView.alloc.init
    
    button = UIButton.rounded_rect
    button.frame = [[0, 0], [150, 50]]
    button.setTitle("close", forState: UIControlStateNormal)
    self.view.addSubview button
    button.addTarget(self, action: 'close', forControlEvents: UIControlEventTouchUpInside)
  end
  
  def close
    dismiss_modal(target: self)
  end
end
