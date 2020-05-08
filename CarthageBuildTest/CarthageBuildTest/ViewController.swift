//
//  ViewController.swift
//  CarthageBuildTest
//
//  Created by Jaime Park on 2/12/20.
//  Copyright © 2020 Jaime Park. All rights reserved.
//

import UIKit
import CardScan

class ViewController: UIViewController, ScanDelegate {
    func userDidCancel(_ scanViewController: ScanViewController) {
        print("User Did Cancel")
        self.dismiss(animated: true, completion: nil)
    }
    
    func userDidScanCard(_ scanViewController: ScanViewController, creditCard: CreditCard) {
        print("User Did Scan Card")
        self.dismiss(animated: true, completion: nil)
    }
    
    func userDidSkip(_ scanViewController: ScanViewController) {
        print("User Did Skip")
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openCardScanButtonPress(_ sender: Any) {
        //let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let scan = ScanViewController.createViewController(withDelegate: self) else { return }
        self.present(scan, animated: true, completion: nil)
    }
    
}

