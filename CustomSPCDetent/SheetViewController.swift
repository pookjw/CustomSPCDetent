//
//  SheetViewController.swift
//  CustomSPCDetent
//
//  Created by Jinwoo Kim on 2/20/22.
//

import UIKit

class SheetViewController: UIViewController, UIViewControllerTransitioningDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        
        let controller: UISheetPresentationController = .init(presentedViewController: presented, presenting: presenting)
        
        let detent1: UISheetPresentationController.Detent = ._detent(withIdentifier: "Test1", constant: 100.0)
        let detent2: UISheetPresentationController.Detent = ._detent(withIdentifier: "Test2", constant: 200.0)
        let detent3: UISheetPresentationController.Detent = ._detent(withIdentifier: "Test3", constant: 300.0)
        
        controller.detents = [detent1, detent2, detent3, .medium(), .large()]
        controller.prefersGrabberVisible = true
        
        return controller
    }
}
