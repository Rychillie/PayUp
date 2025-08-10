//
//  SplashViewModel.swift
//  PayUp
//
//  Created by Rychillie Umpierre de Oliveira on 10/08/25.
//

import Foundation

final class SplashViewModel {
    var onAnimationComplete: (() -> Void)?
    
    func performInitialAnimation(completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            completion()
        }
    }
}
