//
//  ViewController.swift
//  Color Picker
//
//  Created by Olivia Bishop on 4/18/18.
//  Copyright © 2018 Olivia Bishop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let color = [colors(name: "Red", UIColor: UIColor.red),
                  colors(name: "Orange" , UIColor: UIColor.orange),
                  colors(name: "Yellow" , UIColor: UIColor.yellow),
                  colors(name: "Green" , UIColor: UIColor.green),
                  colors(name: "Blue" , UIColor: UIColor.blue),
                  colors(name: "Purple" , UIColor: UIColor.purple)]
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return color[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        colorLabel.text = color[row].name
        self.view.backgroundColor = color[row].UIColor
        
    }
    
    
    
    @IBOutlet var colorLabel: UILabel!
    
    
    @IBOutlet var colorPicker: UIPickerView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorPicker.selectRow(0, inComponent: 0 , animated: true )
        colorLabel.text = color[colorPicker.selectedRow(inComponent: 0)].name
        self.view.backgroundColor = color[colorPicker.selectedRow(inComponent: 0)].UIColor
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

