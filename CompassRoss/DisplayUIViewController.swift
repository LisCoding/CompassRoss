//
//  DisplayUIViewController.swift
//  CompassRoss
//
//  Created by Liseth Cardozo Sejas on 9/12/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class DisplayUIViewController: UIViewController {
    
    @IBOutlet weak var buttonLabel: UIButton!
    var buttonLavelValue : String?
    var delegate : BackButtonDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLabel.setTitle(self.buttonLavelValue, for: .normal)

    }

    
    @IBAction func goBackButton(_ sender: UIButton) {
        delegate?.ButtonBackPressed(by: self)
    }
    



}
