//
//  ViewController.swift
//  DelegateDemo
//
//  Created by Jony Singla on 10/01/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//  http://swiftdeveloperblog.com/pass-information-back-to-the-previous-view-controller/

import UIKit

class ViewController: UIViewController, MyProtocol {
    
    var valueSentFromSecondViewController:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    func setResultOfBusinessLogic(valueSent: String)
    {
        self.valueSentFromSecondViewController = valueSent
        print(valueSent)
        
    }
    
    @IBAction func goNext(sender: AnyObject)
    {
        // 1. Instantiate SecondViewController
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SeondViewController
            
        // 2. Set self as a value to delegate
        secondViewController.delegate = self
        
        // 3. Push SecondViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

