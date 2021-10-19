//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Utsav Barnwal on 20/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtTemperature: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func onConvertClicked(_ sender: Any) {
        if let temperature = txtTemperature.text {
            if(temperature != "") {
                if let num = Double(temperature) {
                    labelResult.text = String(convertToFerhanite(temperature: num))
                }
            } else {
                labelResult.text = "Meh! You need to enter some value"
            }
        }
    }

    func convertToFerhanite(temperature: Double) -> Double {
        return temperature * (9/5) + 32
    }
}

