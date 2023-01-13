//
//  HoroscopoVC.swift
//  Previsoes2023
//
//  Created by stefhany thais sousa silva on 31/12/22.
//

import UIKit

class HoroscopoVC: UIViewController {

    var horoscopoSrceen: HoroscopoScreen?
    
    override func loadView() {
        horoscopoSrceen = HoroscopoScreen()
        view = horoscopoSrceen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        horoscopoSrceen?.delegate(delegate: self)

    }
    
}

extension HoroscopoVC: HoroscopoScreenProtocol {

    func tappedAriesButton() {
        let vc = SignosVC()
        present(vc, animated: true)
    }
    
    func tappedTouroButton() {
        let vc = SignosVC()
        present(vc, animated: true)
    }
    
    func tappedGemeosButton() {
        let vc = SignosVC()
        present(vc, animated: true)
       
    }
    
    func tappedCancerButton() {
        let vc = SignosVC()
        present(vc, animated: true)
    }
    
    func tappedLeaoButton() {
        let vc = SignosVC()
        present(vc, animated: true)
        
       
    }
    
    func tappedVirgemButton() {
        let vc = SignosVC()
        present(vc, animated: true)
       
    }
    
    func tappedLibraButton() {
        let vc = SignosVC()
        present(vc, animated: true)
        
    }
    
    func tappedEscorpiaoButton() {
        let vc = SignosVC()
        present(vc, animated: true)
   
    }
    
    func tappedSargitaButton() {
        let vc = SignosVC()
        present(vc, animated: true)
        
    }
    func tappedCapricaButton() {
        let vc = SignosVC()
        present(vc, animated: true)
        
    }
    
    func tappedAquarioButton() {
        let vc = SignosVC()
        present(vc, animated: true)
        
    }
    
    func tappedPeixesButton() {
        let vc = SignosVC()
        present(vc, animated: true)
        
    }
    
}


    
