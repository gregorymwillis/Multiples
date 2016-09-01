//
//  ViewController.swift
//  Multiples
//
//  Created by Greg Willis on 8/31/16.
//  Copyright © 2016 Willis Programming. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: - Variables
    var multiple: Int = 0
    var numA: Int = 0
    var answer: Int = 0
    
    // MARK: - Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var numberTxtField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addLbl: UILabel!
    
    
    //MARK: - Actions
    
    @IBAction func playBtnPressed(sender: AnyObject) {
        
        if numberTxtField.text != nil && numberTxtField.text != "" {
            
            multiple = Int(numberTxtField.text!)!
            
            logo.hidden = true
            numberTxtField.hidden = true
            playBtn.hidden = true
            
            addBtn.hidden = false
            addLbl.hidden = false
        }
    }
    
    @IBAction func addBtnPressed(sender: AnyObject) {
        
        if answer <= 50 {
            
            answer = numA + multiple
            addLbl.text = "\(numA) + \(multiple) = \(answer)"
            numA = answer
        
        } else {
            
            numberTxtField.text = ""
            
            logo.hidden = false
            numberTxtField.hidden = false
            playBtn.hidden = false
            
            addBtn.hidden = true
            addLbl.hidden = true
            
            multiple = 0
            numA = 0
            answer = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



