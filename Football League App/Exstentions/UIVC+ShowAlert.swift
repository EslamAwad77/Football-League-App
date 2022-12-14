//
//  UIVC+ShowAlert.swift
//  Football League App
//
//  Created by eslam awad elsayed awad on 07/10/2022.
//

import UIKit

extension UIViewController {
    func showAlert(message: String){
        let alert = UIAlertController(title: "Sorry", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
