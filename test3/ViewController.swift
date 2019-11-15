//
//  ViewController.swift
//  test3
//
//  Created by stoller on 2019/11/9.
//  Copyright © 2019年 cgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageview:UIImageView!
    @IBOutlet weak var slider_red:UISlider!
    @IBOutlet weak var slider_green:UISlider!
    @IBOutlet weak var slider_blue:UISlider!
    @IBOutlet weak var slider_alpha:UISlider!
    @IBOutlet weak var lab_red:UILabel!
    @IBOutlet weak var lab_green:UILabel!
    @IBOutlet weak var lab_blue:UILabel!
    @IBOutlet weak var lab_alpha:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let ss = UIImageView(image: UIImage(named: "001.png"))
//        ss.frame = imageview.frame
//        imageview.addSubview(ss)
        
                imageview.backgroundColor = UIColor(red: CGFloat(slider_red.value), green: CGFloat(slider_green.value), blue: CGFloat(slider_blue.value), alpha: CGFloat(slider_alpha.value))
        
        lab_red.text = String(format: "%.2f", slider_red.value)
        lab_green.text = String(format: "%.2f", slider_green.value)
        lab_blue.text = String(format: "%.2f", slider_blue.value)
        lab_alpha.text = String(format: "%.2f", slider_alpha.value)
    }

    @IBAction func onChangeRedSlider(_ sender: UISlider) {
        imageview.backgroundColor = UIColor(red: CGFloat(sender.value), green: CGFloat(slider_green.value), blue: CGFloat(slider_blue.value), alpha: CGFloat(slider_alpha.value))
        
        lab_red.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func onChangeGreenSlider(_ sender: UISlider) {
        imageview.backgroundColor = UIColor(red: CGFloat(slider_red.value), green: CGFloat(sender.value), blue: CGFloat(slider_blue.value), alpha: CGFloat(slider_alpha.value))
        
            lab_green.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func onChangeBlueSlider(_ sender: UISlider) {
        imageview.backgroundColor = UIColor(red: CGFloat(slider_red.value), green: CGFloat(slider_green.value), blue: CGFloat(sender.value), alpha: CGFloat(slider_alpha.value))
        
            lab_blue.text = String(format: "%.2f", sender.value)
    }

    @IBAction func onChangeAlphaSlider(_ sender: UISlider) {
        imageview.backgroundColor = UIColor(red: CGFloat(slider_red.value), green: CGFloat(slider_green.value), blue: CGFloat(slider_blue.value), alpha: CGFloat(sender.value))
        
            lab_alpha.text = String(format: "%.2f", sender.value)
    }
}

