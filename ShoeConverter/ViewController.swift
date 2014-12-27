//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Александр Подрабинович on 21/12/14.
//  Copyright (c) 2014 Alex Podrabinovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shoeSizeTextField: UITextField!
    @IBOutlet weak var convertedSizeLabel: UILabel!
    @IBOutlet weak var womenShoeSizeTextField: UITextField!
    @IBOutlet weak var womenShoeSizeConvertedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertButtonPressed(sender: AnyObject) {
        shoeSizeTextField.resignFirstResponder()
        convertedSizeLabel.hidden = false
        
        let conversionVal = 30
        convertedSizeLabel.text = "\(shoeSizeTextField.text.toInt()! + conversionVal) европейский размер"
    }
    
    @IBAction func convertWomenShoeSizeButtonPressed(sender: UIButton) {
        womenShoeSizeTextField.resignFirstResponder()
        womenShoeSizeConvertedLabel.hidden = false
        
        let conversionVal = 30.5
        womenShoeSizeConvertedLabel.text = "\(Double((womenShoeSizeTextField.text as NSString).doubleValue) + conversionVal) европейский размер"
    }
}

