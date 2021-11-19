//
//  ViewController.swift
//  practice app
//
//  Created by Kanna Dinesh on 11/18/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
    
         var xAxis = 0
         var yAxis = 0
            for j in 1...20{
                var myLable = UILabel.init(frame: .init(x: 0, y: yAxis, width: 30, height: 30))
                myLable.backgroundColor = UIColor.gray
                myLable.text = "two  "
                myLable.textColor = UIColor.white
                myLable.textAlignment = NSTextAlignment.center
                view.addSubview(myLable)
                yAxis += 40 
            
            
            }
            
            for x in 1...9{
                
                var myLable = UILabel.init(frame: .init(x: xAxis, y: 0, width: 30, height: 30))
                myLable.backgroundColor = UIColor.black
                myLable.text = "one"
                myLable.textColor = UIColor.white
                myLable.textAlignment = NSTextAlignment.center
                view.addSubview(myLable)
                xAxis += 40
            
              
                

            }
                                                                        
            
       
}

}
