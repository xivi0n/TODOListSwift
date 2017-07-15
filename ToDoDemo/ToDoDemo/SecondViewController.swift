//
//  SecondViewController.swift
//  ToDoDemo
//
//  Created by Apple on 7/15/17.
//  Copyright © 2017 crossover.G12. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var InputField: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        
        if InputField.text != "" {
            list.append(InputField.text!)
            InputField.text = ""
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

