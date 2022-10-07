//
//  UIView+CornerRaduis.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRaduis: CGFloat{
        get{
            return self.cornerRaduis
        } set {
            self.layer.cornerRadius = newValue
        }
    }
}
