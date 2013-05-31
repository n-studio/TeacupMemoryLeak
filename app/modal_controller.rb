class ModalController < UIViewController
  
  layout do
    subview(UIView)
    subview(UIView)
    subview(UIView)
    subview(UIView)
    subview(UIView)
    
    subview(UIButton.rounded_rect, :close_button,
      width: 150,
      height: 50,
      title: "close"
    ).on(:touch) {
      self.close
    }
  end
  
  def close
    dismiss_modal(target: self)
  end
end