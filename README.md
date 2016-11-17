#### Animated


ghi đè lại hàm viewWillAppear(_ animated: Bool){

super.viewWillAppear(animated)

UIView.animate(withDuration: 2, animations:
            {
             self.logoImage.alpha = 1            
        	   }
}
sử dung  
- withDuration là thời gian thực hiện animated đó,
- animations là hành động sẽ thưc hiện.

Lưu ý khi sử dụng 2 animated:
UIView.animate(withDuration: 2, animations:
            {
             self.logoImage.alpha = 1
            
        }, completion: {(finished) in
            
            UIView.animate(withDuration: 2, animations: {
            
            self.bugImage.center  = CGPoint(x: self.bugImage.center.x,y: 100)
            
            self.bugImage.alpha = 1
            })
- completion là khi 1 cái kết thúc thì cái tiếp theo mới thực hiện
- 
