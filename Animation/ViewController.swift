//
//  ViewController.swift
//  Animation
//
//  Created by Doãn Tuấn on 11/17/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var bugImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImage.alpha = 0
        bugImage.alpha = 0
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 2, animations:
            {
             self.logoImage.alpha = 1
            
        }, completion: {(finished) in
            
            UIView.animate(withDuration: 2, animations: {
            
            self.bugImage.center  = CGPoint(x: self.bugImage.center.x,y: 100)
            
            self.bugImage.alpha = 1
            })
            
            UIView.animate(withDuration: 2, animations: {
                    self.nameText.center = CGPoint(x: self.nameText.center.x,y: 650)
                })
        
    })

}
    
}

