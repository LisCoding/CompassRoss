//
//  displayInfoDelegate.swift
//  CompassRoss
//
//  Created by Liseth Cardozo Sejas on 9/12/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import Foundation
import UIKit

protocol DisplayInfoDelegate: class {
    
    //func displayButtonText(by controller: DisplayUIViewController, with text : String)
    func textToDisplay(for controller: DisplayUIViewController) -> String;
}
