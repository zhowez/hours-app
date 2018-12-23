//
//  ViewController.swift
//  hours app
//
//  Created by Zach Howes on 12/22/18.
//  Copyright © 2018 Zach Howes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    
    //MARK: Properties
    @IBOutlet weak var box: UITextField!
    @IBOutlet weak var updateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Handle the text fields user input through delegrate callbacks
        box.delegate = self
    }
    
  
    
    
    //MARK Action
    @IBAction func goButton(_ sender: UIButton) {
        if box.text?.isEmpty ?? true {
            box.text = "0"
        }
       
        box.resignFirstResponder()
        let wordThing = box.text
        let num1 = Double(wordThing!)
        let num2 = String((num1! + 1 ) * 0.75)
        
        updateLabel.text = num2
    }
    

}

