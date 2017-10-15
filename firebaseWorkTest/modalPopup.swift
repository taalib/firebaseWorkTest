//
//  modalPopup.swift
//  firebaseWorkTest
//
//  Created by Taalib Minhas on 15/10/2017.
//  Copyright © 2017 Minhas, Taalib (ELS-LON). All rights reserved.
//

import UIKit

class modalPopup: UIViewController, currentFacts {
   
    var currentFact: ""
    
    @IBOutlet var modalText: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        print (currentFact)
        modalText.text = currentFact
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    @IBAction func dismissModal(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        currentFact = ""
    }


}
