//
//  SecondViewController.swift
//  Delegates
//
//  Created by Priya Talreja on 16/05/17.
//  Copyright © 2017 Priya Talreja. All rights reserved.
//

import UIKit
protocol SecondViewControllerDelegate {
    func recieveDataFromSVC(controller:SecondViewController , nameString:String,companyString:String);
}
class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var companyTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    var nameReceived:String=String()
    var companyReceived:String=String()
    var delegate:SecondViewControllerDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text! = nameReceived
        companyTextField.text! = companyReceived
        
    }

    
    @IBAction func backAction(_ sender: Any) {
        
        //Passing values to first view controller on back click using delegates.
        self.delegate.recieveDataFromSVC(controller: self, nameString: nameTextField.text!, companyString: companyTextField.text!)
        self.navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    

}
