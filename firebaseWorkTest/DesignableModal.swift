//
//  DesignableModal.swift
//  firebaseWorkTest
//
//  Created by Taalib Minhas on 15/10/2017.
//  Copyright © 2017 Minhas, Taalib (ELS-LON). All rights reserved.
//

import UIKit

@IBDesignable class DesignableModal: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    
}
