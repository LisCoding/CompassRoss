//
//  ViewController.swift
//  CompassRoss
//
//  Created by Liseth Cardozo Sejas on 9/12/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BackButtonDelegate {

    
    @IBAction func buttonWasPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "nextViewSegue", sender: sender )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DisplayUIViewController
        destination.buttonLavelValue = (sender as! UIButton).title(for: .normal)
        //Unwind setting up the value of delegate
        destination.delegate = self
    }
    
    func ButtonBackPressed(by controller: DisplayUIViewController) {
       dismiss(animated: true, completion: nil)
    }

}

