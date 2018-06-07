//
//  TempConvertViewController.swift
//  Currency_Converter
//
//  Created by Nicholas Nguyen on 6/7/18.
//  Copyright © 2018 Nicholas Nguyen. All rights reserved.
//
var factor:Float = 33.8
import UIKit

class TempConvertViewController: UIViewController {
    
    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var InputTemp: UITextField!
    
    @IBOutlet weak var ChangeTemp: UISegmentedControl!
    
    @IBAction func TempConvertBTTN(_ sender: Any) {
        if (ChangeTemp.selectedSegmentIndex == 0){
            factor = 33.8
            
        }else{
            factor = 0-32 * (5/9)
        }
        var InputTempFloat:Float = Float(InputTemp.text!)!
        var outcome:Float = InputTempFloat * factor
        print (outcome)
        var outcomeString:String = String(outcome)
       Result.text = outcomeString
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
