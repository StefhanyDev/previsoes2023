//
//  ViewController.swift
//  Previsoes2023
//
//  Created by stefhany thais sousa silva on 30/12/22.
//

import UIKit

class StartVC: UIViewController {

    var startScreen: StartScreen?
    
    override func loadView() {
        startScreen = StartScreen()
        view = startScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startScreen?.delegate(delegate: self )
        startScreen?.delegate(delegate: self)
    }
    
    func configObserver() {
    }
    
}

extension StartVC: StartScreenProtocol {
    func tappedStartButton() {
        let nav: HoroscopoVC = HoroscopoVC()
       // present(vc, animated: true)
        navigationController?.pushViewController(nav, animated: true)
    }
    
    
}
