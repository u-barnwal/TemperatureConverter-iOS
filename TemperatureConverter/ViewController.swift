//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Utsav Barnwal on 20/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtTemperature: UITextField!
    @IBOutlet weak var labelCountConversions: UILabel!
    @IBOutlet weak var labelResult: UILabel!
    
    var count = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onConvertClicked(_ sender: Any) {
        if let temperature = txtTemperature.text {
            if(temperature != "") {
                if let num = Double(temperature) {
                    labelResult.text = String(convertToFerhanite(temperature: num))
                    incrementConversionCount()
                }
            } else {
                labelResult.text = "Meh! You need to enter some value"
            }
        }
    }
    
    func incrementConversionCount() {
        count += 1
        labelCountConversions.text = String(count) + " Conversion(s)"
    }
    
    func convertToFerhanite(temperature: Double) -> Double {
        return temperature * (9/5) + 32
    }
}

