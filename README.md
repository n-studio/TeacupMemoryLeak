Teacup seems not to be able to release views of a modal viewController.
Same code without Teacup works fine.

code used:
```ruby
layout do
  subview(UIView)
  subview(UIView)
  subview(UIView)
  subview(UIView)
  subview(UIView)
  
  subview(UIButton.rounded_rect, :close_button,
    width: 150, height: 50, title: "close"
  ).on(:touch) {
    self.close
  }
end
```

![Alt text](screenshot.png)