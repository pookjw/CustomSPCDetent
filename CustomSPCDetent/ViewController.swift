//
//  ViewController.swift
//  CustomSPCDetent
//
//  Created by Jinwoo Kim on 2/20/22.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func presentViewController(_ sender: Any) {
        let vc: SheetViewController = .init()
        vc.loadViewIfNeeded()
        present(vc, animated: true)
    }
}

