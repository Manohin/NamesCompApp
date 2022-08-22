//
//  ViewController.swift
//  NamesCompApp
//
//  Created by Alexey Manokhin on 20.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
   
    @IBOutlet weak var yourNameTF: UITextField!
    @IBOutlet weak var partnerNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else { return }
        destinationVC.firstName = yourNameTF.text
        destinationVC.secondName = partnerNameTF.text
    
    
    }

    @IBAction func resultButtonTapped() {
        
        performSegue(withIdentifier: "goToResult", sender: nil)
        
        
    }
    
}

