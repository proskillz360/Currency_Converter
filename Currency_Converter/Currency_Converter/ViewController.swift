//
//  ViewController.swift
//  Currency_Converter
//
//  Created by Nicholas Nguyen on 6/5/18.
//  Copyright © 2018 Nicholas Nguyen. All rights reserved.

// 1 USD is 109.7 Yen
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var output: UILabel!
    
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    
    var factor:Float = 0.86 
    var currency:String = ""
    
    @IBOutlet weak var ChangeVar: UISegmentedControl!
    @IBAction func Change(_ sender: Any) {
        if (ChangeVar.selectedSegmentIndex == 0) {
            factor = 0.86
            currency = "Euros"
            
        }else{
            factor = 109.7
            currency = "Yen"
        }
        
        
    }
    
    @IBAction func conver(_ sender: Any) {
        var z:Float = Float(input.text!)!
        var a:Float = z * factor
        print("$" + input.text! + " is equal to " + String(a) + currency)
        output.text = "$" + input.text! + " is equal to " + String(a) + currency
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        output.layer.borderColor = UIColor.blue.cgColor
        output.layer.borderWidth = 2.0

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

