//
//  ViewController.swift
//  postCard
//
//  Created by Revanth Samavedam on 11/8/14.
//  Copyright (c) 2014 codeFalkes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var mailSentLabel: UILabel!
    
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    
    @IBOutlet weak var enterMessageLabel: UITextField!
    

    @IBOutlet weak var mailButtonPressed: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //IBAction for button pressed

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        mailSentLabel.hidden = false
        
        if enterMessageLabel.text == "" || enterNameTextField.text == "" {
            
            mailSentLabel.text = "Enter the name, message"
        } else {
        
        mailSentLabel.text = enterNameTextField.text
        mailSentLabel.textColor = UIColor.redColor()
        
        
        enterNameTextField.text = ""
        enterMessageLabel.text = ""
        enterMessageLabel.resignFirstResponder()
            
        mailButtonPressed.setTitle("Mail Sent!", forState: UIControlState.Normal)
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

