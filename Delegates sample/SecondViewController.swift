//
//  SecondViewController.swift
//  Delegates sample
//
//  Created by paradigm creatives on 10/27/14.
//  Copyright (c) 2014 Paradigm Creatives. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate{
    func myVCDidFinish(controller:SecondViewController,text:String)
}

class SecondViewController: UIViewController {

    var delegate:SecondViewControllerDelegate? = nil
    var colorString:String = ""
    
   
    @IBOutlet weak var colorLabel: UILabel!

       override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = colorString
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func colorSelection(sender: UIButton) {
        
       colorLabel.text = sender.titleLabel!.text!
        
    }
    @IBAction func colorSelectGreen(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
  
    }
    
    @IBAction func colorSelectBlue(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
  
    }
     @IBAction func saveColor(sender: AnyObject) {
        if (delegate != nil) {
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
        
    }


   

}
