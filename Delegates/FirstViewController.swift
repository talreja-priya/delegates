//
//  FirstViewController.swift
//  Delegates
//
//  Created by Priya Talreja on 16/05/17.
//  Copyright © 2017 Priya Talreja. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController,SecondViewControllerDelegate {

    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func editAction(_ sender: Any) {
        
        //Passing Data to second view controller on edit click
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.delegate = self;
        secondViewController.nameReceived = name.text!
        secondViewController.companyReceived = company.text!
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    //SecondViewController Delegate Method
    func recieveDataFromSVC(controller: SecondViewController, nameString: String, companyString: String) {
        name.text! = nameString
        company.text! = companyString
    }
    

}
