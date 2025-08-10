//
//  UIView+Extensions.swift
//  PayUp
//
//  Created by Rychillie Umpierre de Oliveira on 10/08/25.
//

import Foundation
import UIKit

extension UIView {
    func animateFadeIn(duration: TimeInterval = 1.0, delay: TimeInterval = 0.0) {
        self.alpha = 0
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseInOut) {
            self.alpha = 1
        }
    }
    
    func parentViewController() -> UIViewController? {
        var responder: UIResponder? = self
        while let r = responder {
            if let vc = r as? UIViewController {
                return vc
            }
            responder = r.next
        }
        return nil
    }
}
