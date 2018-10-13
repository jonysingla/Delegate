//
//  SeondViewController.swift
//  DelegateDemo
//
//  Created by Jony Singla on 10/01/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

protocol MyProtocol {
    func setResultOfBusinessLogic(valueSent: String)
}

class SeondViewController: UIViewController {
    
    var delegate:MyProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Perform some business logic. Anything!
        let firstName = "Sergey"
        let lastName = "Kargopolov"
        let fullName = firstName + " " + lastName
        
        delegate?.setResultOfBusinessLogic(valueSent: fullName)
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
