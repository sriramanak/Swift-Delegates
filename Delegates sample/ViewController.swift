//
//  ViewController.swift
//  Delegates sample
//
//  Created by paradigm creatives on 10/27/14.
//  Copyright (c) 2014 Paradigm Creatives. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SecondViewControllerDelegate {

    @IBOutlet weak var colorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func myVCDidFinish(controller: SecondViewController, text: String) {
        colorLabel.text = "The Color is " +  text
      
        
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as SecondViewController
            vc.colorString = colorLabel.text!
            vc.delegate = self
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

